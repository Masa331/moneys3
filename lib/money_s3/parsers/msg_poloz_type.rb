module MoneyS3
  module Parsers
    class MsgPolozType < MessageType
      include ParserCore::BaseParser

      def km_karta
        submodel_at(MessageType, 'KmKarta')
      end

      def sklad
        submodel_at(MessageType, 'Sklad')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'

        hash
        super.merge(hash)
      end
    end
  end
end