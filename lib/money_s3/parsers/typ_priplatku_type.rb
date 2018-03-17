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
        { zkratka: zkratka,
          popis: popis,
          poznamka: poznamka,
          druh: druh,
          sazba: sazba,
          typ: typ,
          auto_load: auto_load,
          pr_nah_off: pr_nah_off
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end