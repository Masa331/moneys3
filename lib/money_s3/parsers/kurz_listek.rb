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
        hash = {}

        hash[:banka] = banka if raw.key? :Banka
        hash[:por_cislo] = por_cislo if raw.key? :PorCislo
        hash[:datum] = datum if raw.key? :Datum
        hash[:seznam_kurzu] = seznam_kurzu.map(&:to_h) if raw.key? :SeznamKurzu

        hash
      end
    end
  end
end