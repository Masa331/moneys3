module MoneyS3
  module Parsers
    class SkupinaFiremType
      include ParserCore::BaseParser

      def zkratka
        at 'Zkratka'
      end

      def zkratka_attributes
        attributes_at 'Zkratka'
      end

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkratka] = zkratka if has? 'Zkratka'
        hash[:zkratka_attributes] = zkratka_attributes if has? 'Zkratka'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'

        hash
      end
    end
  end
end