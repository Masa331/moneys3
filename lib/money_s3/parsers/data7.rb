module MoneyS3
  module Parsers
    class Data7
      include ParserCore::BaseParser

      def bank_ucet_pokladna
        submodel_at(BankUcetPokladnaType, 'BankUcetPokladna')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:bank_ucet_pokladna] = bank_ucet_pokladna.to_h if has? 'BankUcetPokladna'

        hash
      end
    end
  end
end