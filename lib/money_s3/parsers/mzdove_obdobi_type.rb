module MoneyS3
  module Parsers
    class MzdoveObdobiType
      include ParserCore::BaseParser

      def mesic
        at 'Mesic'
      end

      def rok
        at 'Rok'
      end

      def funkce
        at 'Funkce'
      end

      def prac_pomer
        submodel_at(PracPomer, 'PracPomer')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:mesic] = mesic if has? 'Mesic'
        hash[:rok] = rok if has? 'Rok'
        hash[:funkce] = funkce if has? 'Funkce'
        hash[:prac_pomer] = prac_pomer.to_h_with_attrs if has? 'PracPomer'

        hash
      end
    end
  end
end