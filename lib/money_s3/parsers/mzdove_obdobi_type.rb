module MoneyS3
  module Parsers
    class MzdoveObdobiType
      include ParserCore::BaseParser

      def mesic
        at 'Mesic'
      end

      def mesic_attributes
        attributes_at 'Mesic'
      end

      def rok
        at 'Rok'
      end

      def rok_attributes
        attributes_at 'Rok'
      end

      def funkce
        at 'Funkce'
      end

      def funkce_attributes
        attributes_at 'Funkce'
      end

      def prac_pomer
        submodel_at(PracPomer, 'PracPomer')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:mesic] = mesic if has? 'Mesic'
        hash[:mesic_attributes] = mesic_attributes if has? 'Mesic'
        hash[:rok] = rok if has? 'Rok'
        hash[:rok_attributes] = rok_attributes if has? 'Rok'
        hash[:funkce] = funkce if has? 'Funkce'
        hash[:funkce_attributes] = funkce_attributes if has? 'Funkce'
        hash[:prac_pomer] = prac_pomer.to_h if has? 'PracPomer'

        hash
      end
    end
  end
end