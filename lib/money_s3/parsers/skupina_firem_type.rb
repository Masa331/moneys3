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
        hash = {}

        hash[:zkratka] = zkratka if raw.key? :Zkratka
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:poznamka] = poznamka if raw.key? :Poznamka

        hash
      end
    end
  end
end