module MoneyS3
  module Parsers
    class MsgFirmaType < MessageType
      include ParserCore::BaseParser

      def osoba
        array_of_at(MessageType, ['Osoba'])
      end

      def data
        submodel_at(FirmaType, 'Data')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:osoba] = osoba.map(&:to_h) if has? 'Osoba'
        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end