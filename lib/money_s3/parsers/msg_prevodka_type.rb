module MoneyS3
  module Parsers
    class MsgPrevodkaType < MessageType
      include ParserCore::BaseParser

      def sklad_pro_pr
        submodel_at(MessageType, 'SkladProPr')
      end

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
        submodel_at(SklDoklType, 'Data')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:sklad_pro_pr] = sklad_pro_pr.to_h_with_attrs if has? 'SkladProPr'
        hash[:dod_odb] = dod_odb.to_h_with_attrs if has? 'DodOdb'
        hash[:konec_prij] = konec_prij.to_h_with_attrs if has? 'KonecPrij'
        hash[:polozka] = polozka.map(&:to_h_with_attrs) if has? 'Polozka'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end