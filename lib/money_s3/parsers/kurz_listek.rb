require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/kurz_type'

module MoneyS3
  module Parsers
    class KurzListek
      include BaseParser

      def banka
        at :Banka
      end

      def por_cislo
        at :PorCislo
      end

      def datum
        at :Datum
      end

      def seznam_kurzu
        array_of_at(KurzType, [:SeznamKurzu, :Kurz])
      end

      def to_h
        { banka: banka,
          por_cislo: por_cislo,
          datum: datum,
          seznam_kurzu: seznam_kurzu.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end