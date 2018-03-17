require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class UcPohybType
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def popis
        at :Popis
      end

      def typ
        at :Typ
      end

      def sloupec
        at :Sloupec
      end

      def pozn
        at :Pozn
      end

      def to_h
        { zkrat: zkrat,
          popis: popis,
          typ: typ,
          sloupec: sloupec,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end