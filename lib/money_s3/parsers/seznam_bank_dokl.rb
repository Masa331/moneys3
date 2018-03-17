require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/bank_dokl'

module MoneyS3
  module Parsers
    class SeznamBankDokl
      include BaseParser

      def bank_dokl
        array_of_at(BankDokl, [:BankDokl])
      end

      def to_h
        { bank_dokl: bank_dokl.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end