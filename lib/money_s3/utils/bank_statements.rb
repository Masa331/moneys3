module MoneyS3
  module Utils
    class BankStatements
      TRANSACTION_TYPES = [:credit, :debit]

      def initialize(configuration)
        @my_bank_account_id = configuration.fetch :my_bank_account_id

        @credit_transactions_rule = configuration.fetch :credit_transactions_rule
        @debit_transactions_rule = configuration.fetch :debit_transactions_rule

        @credit_transactions_vat_rule = configuration.fetch :credit_transactions_vat_rule
        @debit_transactions_vat_rule = configuration.fetch :debit_transactions_vat_rule

        @credit_transactions_series = configuration.fetch :credit_transactions_series
        @debit_transactions_series = configuration.fetch :debit_transactions_series
      end

      def to_xml(raw)
        statements = raw.map do |item|
          amount = item.fetch :amount

          data = {
            id_polozky: item[:transaction_id].to_s,
            dat_uc_pr: item[:date].to_s,
            dat_vyst: item[:date].to_s,
            dat_plat: item[:date].to_s,
            dat_pln: item[:date].to_s,
            vypis: item[:statement_id].to_s,
            ucet: { zkrat: item.fetch(:my_bank_account_id, @my_bank_account_id) },
            popis: item[:description].to_s,
            pozn: item[:note].to_s,
            var_sym: item[:variable_symbol].to_s,
            spec_sym: item[:specific_symbol].to_s,
            kon_sym: item[:constant_symbol].to_s,
            ad_ucet: item[:counterparty_account].to_s,
            ad_kod: item[:counterparty_bank_code].to_s
          }

          if item[:rule]
            data.merge!({ pr_kont: item[:rule] })
          end

          if item[:vat_rule]
            data.merge!({ cleneni: item[:vat_rule] })
          end

          if item[:foreign_currency_code]
            data.merge!({
              valuty: {
                mena: { kod: item[:foreign_currency_code].to_s, celkem: amount.to_s },
                souhrn_dph: { zaklad0: amount.to_s }
              }
            })
          else
            data.merge!({
              celkem: amount.to_s,
              souhrn_dph: { zaklad0: amount.to_s }
            })
          end

          transaction_type = item.fetch :type
          fail "Unknown transaction type: #{transaction_type}" unless TRANSACTION_TYPES.include? transaction_type

          if transaction_type == :credit
            defaults = {
              vydej: '0',
              pr_kont: @credit_transactions_rule,
              cleneni: @credit_transactions_vat_rule,
              d_rada: @credit_transactions_series
            }

            data = defaults.merge(data)
          else
            defaults = {
              vydej: '1',
              pr_kont: @debit_transactions_rule,
              cleneni: @debit_transactions_vat_rule,
              d_rada: @debit_transactions_series
            }

            data = defaults.merge(data)
          end

          data.delete_if { |_, v| v.nil? || v == '' }

          data
        end

        money_data = { seznam_bank_dokl: statements }
        MoneyS3.build(money_data)
      end
    end
  end
end
