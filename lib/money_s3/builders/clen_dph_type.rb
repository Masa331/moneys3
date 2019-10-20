module MoneyS3
  module Builders
    class ClenDPHType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('DatumOd', data[:datum_od], data[:datum_od_attributes]) if data.key? :datum_od
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Kolonka', data[:kolonka], data[:kolonka_attributes]) if data.key? :kolonka
        root << build_element('KodPlneni', data[:kod_plneni], data[:kod_plneni_attributes]) if data.key? :kod_plneni
        root << build_element('BezOdpoctu', data[:bez_odpoctu], data[:bez_odpoctu_attributes]) if data.key? :bez_odpoctu
        root << build_element('NoKoef', data[:no_koef], data[:no_koef_attributes]) if data.key? :no_koef
        root << build_element('Majetek', data[:majetek], data[:majetek_attributes]) if data.key? :majetek
        root << build_element('KV1', data[:kv1], data[:kv1_attributes]) if data.key? :kv1
        root << build_element('KV2', data[:kv2], data[:kv2_attributes]) if data.key? :kv2
        root << build_element('KVLimit', data[:kv_limit], data[:kv_limit_attributes]) if data.key? :kv_limit
        root << build_element('KVRezim', data[:kv_rezim], data[:kv_rezim_attributes]) if data.key? :kv_rezim
        root << build_element('KVPomer', data[:kv_pomer], data[:kv_pomer_attributes]) if data.key? :kv_pomer
        root << build_element('KVInsolv', data[:kv_insolv], data[:kv_insolv_attributes]) if data.key? :kv_insolv
        root << build_element('MOSS', data[:moss], data[:moss_attributes]) if data.key? :moss
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn

        root
      end
    end
  end
end