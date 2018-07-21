module MoneyS3
  module Parsers
    class UcPohybType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def sloupec
        at 'Sloupec'
      end

      def sloupec_attributes
        attributes_at 'Sloupec'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:sloupec] = sloupec if has? 'Sloupec'
        hash[:sloupec_attributes] = sloupec_attributes if has? 'Sloupec'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'

        hash
      end
    end
  end
end