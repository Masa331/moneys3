require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class PrepravceType
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def nazev
        at :Nazev
      end

      def poznamka
        at :Poznamka
      end

      def kod_odesil
        at :KodOdesil
      end

      def to_h
        { zkrat: zkrat,
          nazev: nazev,
          poznamka: poznamka,
          kod_odesil: kod_odesil
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end