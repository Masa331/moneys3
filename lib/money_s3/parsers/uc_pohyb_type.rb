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
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:popis] = popis if raw.key? :Popis
        hash[:typ] = typ if raw.key? :Typ
        hash[:sloupec] = sloupec if raw.key? :Sloupec
        hash[:pozn] = pozn if raw.key? :Pozn

        hash
      end
    end
  end
end