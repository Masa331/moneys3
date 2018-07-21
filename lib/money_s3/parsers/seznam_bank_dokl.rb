module MoneyS3
  module Parsers
    class SeznamBankDokl
      include ParserCore::BaseParser

      def bank_dokl
        array_of_at(BankDokl, ['BankDokl'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:bank_dokl] = bank_dokl.map(&:to_h) if has? 'BankDokl'

        hash
      end
    end
  end
end