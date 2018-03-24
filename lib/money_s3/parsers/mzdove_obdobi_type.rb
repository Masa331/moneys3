require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/prac_pomer'

module MoneyS3
  module Parsers
    class MzdoveObdobiType
      include BaseParser

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

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:mesic] = mesic if has? 'Mesic'
        hash[:rok] = rok if has? 'Rok'
        hash[:funkce] = funkce if has? 'Funkce'
        hash[:prac_pomer] = prac_pomer.to_h if has? 'PracPomer'

        hash
      end
    end
  end
end