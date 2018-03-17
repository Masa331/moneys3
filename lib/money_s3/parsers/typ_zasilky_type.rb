require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class TypZasilkyType
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def popis
        at :Popis
      end

      def poznamka
        at :Poznamka
      end

      def to_h
        { zkrat: zkrat,
          popis: popis,
          poznamka: poznamka
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end