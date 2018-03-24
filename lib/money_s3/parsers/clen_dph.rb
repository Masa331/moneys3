require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class ClenDPH
      include BaseParser

      def zkrat
        at 'Zkrat'
      end

      def datum_od
        at 'DatumOd'
      end

      def popis
        at 'Popis'
      end

      def typ
        at 'Typ'
      end

      def kolonka
        at 'Kolonka'
      end

      def kod_plneni
        at 'KodPlneni'
      end

      def bez_odpoctu
        at 'BezOdpoctu'
      end

      def no_koef
        at 'NoKoef'
      end

      def majetek
        at 'Majetek'
      end

      def pozn
        at 'Pozn'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:datum_od] = datum_od if has? 'DatumOd'
        hash[:popis] = popis if has? 'Popis'
        hash[:typ] = typ if has? 'Typ'
        hash[:kolonka] = kolonka if has? 'Kolonka'
        hash[:kod_plneni] = kod_plneni if has? 'KodPlneni'
        hash[:bez_odpoctu] = bez_odpoctu if has? 'BezOdpoctu'
        hash[:no_koef] = no_koef if has? 'NoKoef'
        hash[:majetek] = majetek if has? 'Majetek'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end