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

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:km_kart] = km_kart.to_h if has? 'KmKart'
        hash[:sklad] = sklad.to_h if has? 'Sklad'
        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end