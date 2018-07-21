module MoneyS3
  module Parsers
    class MsgKmKartaType < MessageType
      include ParserCore::BaseParser

      def komponenta
        array_of_at(MsgKomponentaType, ['Komponenta'])
      end

      def data
        submodel_at(KmKartaType, 'Data')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:komponenta] = komponenta.map(&:to_h) if has? 'Komponenta'
        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end