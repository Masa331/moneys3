require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/prac_pomer'

module MoneyS3
  module Parsers
    class MzdoveObdobiType
      include BaseParser

      def mesic
        at :Mesic
      end

      def rok
        at :Rok
      end

      def funkce
        at :Funkce
      end

      def prac_pomer
        submodel_at(PracPomer, :PracPomer)
      end

      def to_h
        hash = {}

        hash[:mesic] = mesic if raw.key? :Mesic
        hash[:rok] = rok if raw.key? :Rok
        hash[:funkce] = funkce if raw.key? :Funkce
        hash[:prac_pomer] = prac_pomer.to_h if raw.key? :PracPomer

        hash
      end
    end
  end
end