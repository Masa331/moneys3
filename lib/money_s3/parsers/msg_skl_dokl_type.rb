module MoneyS3
  module Parsers
    class MsgSklDoklType < MessageType
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

      def nep_platba
        array_of_at(MessageType, ['NepPlatba'])
      end

      def data
        submodel_at(SklDoklType, 'Data')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:dod_odb] = dod_odb.to_h if has? 'DodOdb'
        hash[:konec_prij] = konec_prij.to_h if has? 'KonecPrij'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'
        hash[:nep_platba] = nep_platba.map(&:to_h) if has? 'NepPlatba'
        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end