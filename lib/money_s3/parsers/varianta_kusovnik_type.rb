module MoneyS3
  module Parsers
    class VariantaKusovnikType
      include BaseParser

      def nazev
        at 'Nazev'
      end

      def poznamka
        at 'Poznamka'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:nazev] = nazev if has? 'Nazev'
        hash[:poznamka] = poznamka if has? 'Poznamka'

        hash
      end
    end
  end
end