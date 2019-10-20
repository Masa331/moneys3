module MoneyS3
  module Parsers
    class Import < MessageType
      include ParserCore::BaseParser

      def dod_odb
        submodel_at(MsgFirmaType, 'DodOdb')
      end

      def konec_prij
        submodel_at(MsgFirmaType, 'KonecPrij')
      end

      def polozka
        array_of_at(MsgFaktPolozType, ['Polozka'])
      end

      def uhrada
        array_of_at(MessageType, ['Uhrada'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:dod_odb] = dod_odb.to_h if has? 'DodOdb'
        hash[:konec_prij] = konec_prij.to_h if has? 'KonecPrij'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'
        hash[:uhrada] = uhrada.map(&:to_h) if has? 'Uhrada'

        hash
        super.merge(hash)
      end
    end
  end
end