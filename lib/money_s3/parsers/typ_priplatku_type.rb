require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class TypPriplatkuType
      include BaseParser

      def zkratka
        at :Zkratka
      end

      def popis
        at :Popis
      end

      def poznamka
        at :Poznamka
      end

      def druh
        at :Druh
      end

      def sazba
        at :Sazba
      end

      def typ
        at :Typ
      end

      def auto_load
        at :AutoLoad
      end

      def pr_nah_off
        at :PrNahOff
      end

      def to_h
        hash = {}

        hash[:zkratka] = zkratka if raw.key? :Zkratka
        hash[:popis] = popis if raw.key? :Popis
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:druh] = druh if raw.key? :Druh
        hash[:sazba] = sazba if raw.key? :Sazba
        hash[:typ] = typ if raw.key? :Typ
        hash[:auto_load] = auto_load if raw.key? :AutoLoad
        hash[:pr_nah_off] = pr_nah_off if raw.key? :PrNahOff

        hash
      end
    end
  end
end