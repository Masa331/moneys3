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

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:sklad] = sklad.to_h if has? 'Sklad'

        hash
        super.merge(hash)
      end
    end
  end
end