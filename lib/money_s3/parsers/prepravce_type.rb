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
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:kod_odesil] = kod_odesil if raw.key? :KodOdesil

        hash
      end
    end
  end
end