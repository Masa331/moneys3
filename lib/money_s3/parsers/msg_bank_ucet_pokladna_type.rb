module MoneyS3
  module Parsers
    class MsgBankUcetPokladnaType < MessageType
      include ParserCore::BaseParser

      def data
        submodel_at(Data7, 'Data')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end