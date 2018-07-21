module MoneyS3
  module Parsers
    class MsgObjType < MessageType
      include ParserCore::BaseParser

      def dod_odb
        submodel_at(MsgFirmaType, 'DodOdb')
      end

      def konec_prij
        submodel_at(MsgFirmaType, 'KonecPrij')
      end

      def polozka
        array_of_at(MsgPolozType, ['Polozka'])
      end

      def data
        submodel_at(ObjednavkaType, 'Data')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:dod_odb] = dod_odb.to_h if has? 'DodOdb'
        hash[:konec_prij] = konec_prij.to_h if has? 'KonecPrij'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'
        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end