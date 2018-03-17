require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mena_type'

module MoneyS3
  module Parsers
    class CenovaHladinaType
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

      def skup
        at :Skup
      end

      def ceny
        at :Ceny
      end

      def mena
        submodel_at(MenaType, :Mena)
      end

      def to_h
        { zkrat: zkrat,
          nazev: nazev,
          pozn: pozn,
          skup: skup,
          ceny: ceny,
          mena: mena.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end