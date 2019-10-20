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

      def kv1
        at 'KV1'
      end

      def kv1_attributes
        attributes_at 'KV1'
      end

      def kv2
        at 'KV2'
      end

      def kv2_attributes
        attributes_at 'KV2'
      end

      def kv_limit
        at 'KVLimit'
      end

      def kv_limit_attributes
        attributes_at 'KVLimit'
      end

      def kv_rezim
        at 'KVRezim'
      end

      def kv_rezim_attributes
        attributes_at 'KVRezim'
      end

      def kv_pomer
        at 'KVPomer'
      end

      def kv_pomer_attributes
        attributes_at 'KVPomer'
      end

      def kv_insolv
        at 'KVInsolv'
      end

      def kv_insolv_attributes
        attributes_at 'KVInsolv'
      end

      def moss
        at 'MOSS'
      end

      def moss_attributes
        attributes_at 'MOSS'
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
        hash[:kv1] = kv1 if has? 'KV1'
        hash[:kv1_attributes] = kv1_attributes if has? 'KV1'
        hash[:kv2] = kv2 if has? 'KV2'
        hash[:kv2_attributes] = kv2_attributes if has? 'KV2'
        hash[:kv_limit] = kv_limit if has? 'KVLimit'
        hash[:kv_limit_attributes] = kv_limit_attributes if has? 'KVLimit'
        hash[:kv_rezim] = kv_rezim if has? 'KVRezim'
        hash[:kv_rezim_attributes] = kv_rezim_attributes if has? 'KVRezim'
        hash[:kv_pomer] = kv_pomer if has? 'KVPomer'
        hash[:kv_pomer_attributes] = kv_pomer_attributes if has? 'KVPomer'
        hash[:kv_insolv] = kv_insolv if has? 'KVInsolv'
        hash[:kv_insolv_attributes] = kv_insolv_attributes if has? 'KVInsolv'
        hash[:moss] = moss if has? 'MOSS'
        hash[:moss_attributes] = moss_attributes if has? 'MOSS'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'

        hash
      end
    end
  end
end