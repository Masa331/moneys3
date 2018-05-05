module MoneyS3
  module Parsers
    class Data7
      include ParserCore::BaseParser

      def bank_ucet_pokladna
        submodel_at(BankUcetPokladnaType, 'BankUcetPokladna')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:bank_ucet_pokladna] = bank_ucet_pokladna.to_h_with_attrs if has? 'BankUcetPokladna'

        hash
      end
    end
  end
end