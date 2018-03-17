require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Cinnost
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def nazev
        at :Nazev
      end

      def pozn
        at :Pozn
      end

      def to_h
        { zkrat: zkrat,
          nazev: nazev,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end