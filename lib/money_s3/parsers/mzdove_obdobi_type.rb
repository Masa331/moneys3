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
        { mesic: mesic,
          rok: rok,
          funkce: funkce,
          prac_pomer: prac_pomer.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end