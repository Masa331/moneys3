require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Stredisko
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
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:pozn] = pozn if raw.key? :Pozn

        hash
      end
    end
  end
end