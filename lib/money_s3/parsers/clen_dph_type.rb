module MoneyS3
  module Parsers
    class ClenDPHType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def datum_od
        at 'DatumOd'
      end

      def datum_od_attributes
        attributes_at 'DatumOd'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def kolonka
        at 'Kolonka'
      end

      def kolonka_attributes
        attributes_at 'Kolonka'
      end

      def kod_plneni
        at 'KodPlneni'
      end

      def kod_plneni_attributes
        attributes_at 'KodPlneni'
      end

      def bez_odpoctu
        at 'BezOdpoctu'
      end

      def bez_odpoctu_attributes
        attributes_at 'BezOdpoctu'
      end

      def no_koef
        at 'NoKoef'
      end

      def no_koef_attributes
        attributes_at 'NoKoef'
      end

      def majetek
        at 'Majetek'
      end

      def majetek_attributes
        attributes_at 'Majetek'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:datum_od] = datum_od if has? 'DatumOd'
        hash[:datum_od_attributes] = datum_od_attributes if has? 'DatumOd'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:kolonka] = kolonka if has? 'Kolonka'
        hash[:kolonka_attributes] = kolonka_attributes if has? 'Kolonka'
        hash[:kod_plneni] = kod_plneni if has? 'KodPlneni'
        hash[:kod_plneni_attributes] = kod_plneni_attributes if has? 'KodPlneni'
        hash[:bez_odpoctu] = bez_odpoctu if has? 'BezOdpoctu'
        hash[:bez_odpoctu_attributes] = bez_odpoctu_attributes if has? 'BezOdpoctu'
        hash[:no_koef] = no_koef if has? 'NoKoef'
        hash[:no_koef_attributes] = no_koef_attributes if has? 'NoKoef'
        hash[:majetek] = majetek if has? 'Majetek'
        hash[:majetek_attributes] = majetek_attributes if has? 'Majetek'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'

        hash
      end
    end
  end
end