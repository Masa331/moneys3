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
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:datum_od] = datum_od if raw.key? :DatumOd
        hash[:popis] = popis if raw.key? :Popis
        hash[:typ] = typ if raw.key? :Typ
        hash[:kolonka] = kolonka if raw.key? :Kolonka
        hash[:kod_plneni] = kod_plneni if raw.key? :KodPlneni
        hash[:bez_odpoctu] = bez_odpoctu if raw.key? :BezOdpoctu
        hash[:no_koef] = no_koef if raw.key? :NoKoef
        hash[:majetek] = majetek if raw.key? :Majetek
        hash[:pozn] = pozn if raw.key? :Pozn

        hash
      end
    end
  end
end