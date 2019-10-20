module MoneyS3
  module Builders
    class KmKartaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        root << build_element('MJ', data[:mj], data[:mj_attributes]) if data.key? :mj
        root << build_element('UzivCode', data[:uziv_code], data[:uziv_code_attributes]) if data.key? :uziv_code
        root << build_element('GUID', data[:guid], data[:guid_attributes]) if data.key? :guid
        root << build_element('Katalog', data[:katalog], data[:katalog_attributes]) if data.key? :katalog
        root << build_element('BarCode', data[:bar_code], data[:bar_code_attributes]) if data.key? :bar_code
        root << build_element('BCTyp', data[:bc_typ], data[:bc_typ_attributes]) if data.key? :bc_typ
        root << build_element('TypZarDoby', data[:typ_zar_doby], data[:typ_zar_doby_attributes]) if data.key? :typ_zar_doby
        root << build_element('ZarDoba', data[:zar_doba], data[:zar_doba_attributes]) if data.key? :zar_doba
        root << build_element('ZbozKuch', data[:zboz_kuch], data[:zboz_kuch_attributes]) if data.key? :zboz_kuch
        root << build_element('EvVyrCis', data[:ev_vyr_cis], data[:ev_vyr_cis_attributes]) if data.key? :ev_vyr_cis
        root << build_element('DesMist', data[:des_mist], data[:des_mist_attributes]) if data.key? :des_mist
        root << build_element('Obrazek', data[:obrazek], data[:obrazek_attributes]) if data.key? :obrazek
        root << build_element('Obrazek2', data[:obrazek2], data[:obrazek2_attributes]) if data.key? :obrazek2
        if data.key? :konfigurace
          root << Konfigurace.new('konfigurace', data[:konfigurace]).builder
        end
        if data.key? :definice_ceny
          root << DefiniceCeny.new('definiceCeny', data[:definice_ceny]).builder
        end
        root << build_element('Ceny', data[:ceny], data[:ceny_attributes]) if data.key? :ceny
        root << build_element('Nastav', data[:nastav], data[:nastav_attributes]) if data.key? :nastav
        root << build_element('Popis1', data[:popis1], data[:popis1_attributes]) if data.key? :popis1
        root << build_element('Pozn1', data[:pozn1], data[:pozn1_attributes]) if data.key? :pozn1
        root << build_element('Popis2', data[:popis2], data[:popis2_attributes]) if data.key? :popis2
        root << build_element('Pozn2', data[:pozn2], data[:pozn2_attributes]) if data.key? :pozn2
        root << build_element('Popis3', data[:popis3], data[:popis3_attributes]) if data.key? :popis3
        root << build_element('Pozn3', data[:pozn3], data[:pozn3_attributes]) if data.key? :pozn3
        root << build_element('Hmotnost', data[:hmotnost], data[:hmotnost_attributes]) if data.key? :hmotnost
        root << build_element('Objem', data[:objem], data[:objem_attributes]) if data.key? :objem
        root << build_element('KodKN', data[:kod_kn], data[:kod_kn_attributes]) if data.key? :kod_kn
        root << build_element('PredmPln', data[:predm_pln], data[:predm_pln_attributes]) if data.key? :predm_pln
        root << build_element('KodStatu', data[:kod_statu], data[:kod_statu_attributes]) if data.key? :kod_statu
        root << build_element('TypKarty', data[:typ_karty], data[:typ_karty_attributes]) if data.key? :typ_karty
        root << build_element('iDoklPol', data[:i_dokl_pol], data[:i_dokl_pol_attributes]) if data.key? :i_dokl_pol
        root << build_element('iDoklAgend', data[:i_dokl_agend], data[:i_dokl_agend_attributes]) if data.key? :i_dokl_agend
        if data.key? :slozeni
          element = Ox::Element.new('Slozeni')
          data[:slozeni].each { |i| element << KomponentaType.new('Komponenta', i).builder }
          root << element
        end
        if data.key? :seznam_parametru_karty
          element = Ox::Element.new('SeznamParametruKarty')
          data[:seznam_parametru_karty].each { |i| element << ParametrKartaType.new('ParametrKarty', i).builder }
          root << element
        end
        if data.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          data[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end