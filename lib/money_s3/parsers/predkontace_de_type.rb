require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class PredkontaceDEType
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

      def poh_zak
        at :PohZak
      end

      def zauct_dph
        at :ZauctDPH
      end

      def cleneni
        at :Cleneni
      end

      def pozn
        at :Pozn
      end

      def to_h
        { zkrat: zkrat,
          popis: popis,
          typ: typ,
          poh_zak: poh_zak,
          zauct_dph: zauct_dph,
          cleneni: cleneni,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end