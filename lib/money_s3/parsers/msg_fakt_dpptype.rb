module MoneyS3
  module Parsers
    class MsgFaktDpptype < MessageType
      include ParserCore::BaseParser

      def dod_odb
        submodel_at(MsgFirmaType, 'DodOdb')
      end

      def polozka
        array_of_at(MsgFaktPolozType, ['Polozka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:dod_odb] = dod_odb.to_h if has? 'DodOdb'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'

        hash
        super.merge(hash)
      end
    end
  end
end