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
            id_polozky: item[:transaction_id],
            dat_uc_pr: item[:date],
            dat_vyst: item[:date],
            dat_plat: item[:date],
            dat_pln: item[:date],
            vypis: item[:statement_id],
            celkem: amount,
            ucet: { zkrat: item.fetch(:my_bank_account_id, @my_bank_account_id) },
            popis: item[:description],
            pozn: item[:note],
            var_sym: item[:variable_symbol],
            spec_sym: item[:specific_symbol],
            kon_sym: item[:constant_symbol],
            ad_ucet: item[:counterparty_account],
            ad_kod: item[:counterparty_bank_code],
            souhrn_dph: {
              zaklad0: amount
            }
          }

          transaction_type = item.fetch :type
          fail "Unknown transaction type: #{transaction_type}" unless TRANSACTION_TYPES.include? transaction_type

          if transaction_type == :credit
            data.merge!({
              vydej: '0',
              pr_kont: @credit_transactions_rule,
              cleneni: @credit_transactions_vat_rule,
              d_rada: @credit_transactions_series
            })
          else
            data.merge!({
              vydej: '1',
              pr_kont: @debit_transactions_rule,
              cleneni: @debit_transactions_vat_rule,
              d_rada: @debit_transactions_series
            })
          end

          data.delete_if { |_, v| v.nil? || v == '' }
          data.transform_values! do |value|
            if value.is_a? Hash
              value.transform_values! { |value| value.to_s }
            else
              value.to_s
            end
          end

          data
        end

        money_data = { seznam_bank_dokl: statements }
        MoneyS3.build(money_data)
      end
    end
  end
end
