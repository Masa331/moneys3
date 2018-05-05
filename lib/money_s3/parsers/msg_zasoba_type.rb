module MoneyS3
  module Parsers
    class MsgZasobaType < MessageType
      include ParserCore::BaseParser

      def km_kart
        submodel_at(MessageType, 'KmKart')
      end

      def sklad
        submodel_at(MessageType, 'Sklad')
      end

      def data
        submodel_at(ZasobaType, 'Data')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:km_kart] = km_kart.to_h_with_attrs if has? 'KmKart'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end