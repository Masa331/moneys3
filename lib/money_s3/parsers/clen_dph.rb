require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class ClenDPH
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def datum_od
        at :DatumOd
      end

      def popis
        at :Popis
      end

      def typ
        at :Typ
      end

      def kolonka
        at :Kolonka
      end

      def kod_plneni
        at :KodPlneni
      end

      def bez_odpoctu
        at :BezOdpoctu
      end

      def no_koef
        at :NoKoef
      end

      def majetek
        at :Majetek
      end

      def pozn
        at :Pozn
      end

      def to_h
        { zkrat: zkrat,
          datum_od: datum_od,
          popis: popis,
          typ: typ,
          kolonka: kolonka,
          kod_plneni: kod_plneni,
          bez_odpoctu: bez_odpoctu,
          no_koef: no_koef,
          majetek: majetek,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end