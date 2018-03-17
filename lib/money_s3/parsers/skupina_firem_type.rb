require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class SkupinaFiremType
      include BaseParser

      def zkratka
        at :Zkratka
      end

      def nazev
        at :Nazev
      end

      def poznamka
        at :Poznamka
      end

      def to_h
        { zkratka: zkratka,
          nazev: nazev,
          poznamka: poznamka
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end