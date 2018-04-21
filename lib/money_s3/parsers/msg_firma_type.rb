module MoneyS3
  module Parsers
    class MsgFirmaType < MessageType
      include BaseParser

      def osoba
        array_of_at(MessageType, ['Osoba'])
      end

      def data
        submodel_at(FirmaType, 'Data')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:osoba] = osoba.map(&:to_h_with_attrs) if has? 'Osoba'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end