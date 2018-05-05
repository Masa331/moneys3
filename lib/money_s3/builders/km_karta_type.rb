module MoneyS3
  module Builders
    class KmKartaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('MJ', data[:mj]) if data.key? :mj
        root << build_element('UzivCode', data[:uziv_code]) if data.key? :uziv_code
        root << build_element('GUID', data[:guid]) if data.key? :guid
        root << build_element('Katalog', data[:katalog]) if data.key? :katalog
        root << build_element('BarCode', data[:bar_code]) if data.key? :bar_code
        root << build_element('BCTyp', data[:bc_typ]) if data.key? :bc_typ
        root << build_element('TypZarDoby', data[:typ_zar_doby]) if data.key? :typ_zar_doby
        root << build_element('ZarDoba', data[:zar_doba]) if data.key? :zar_doba
        root << build_element('EvDruhy', data[:ev_druhy]) if data.key? :ev_druhy
        root << build_element('EvVyrCis', data[:ev_vyr_cis]) if data.key? :ev_vyr_cis
        root << build_element('DesMist', data[:des_mist]) if data.key? :des_mist
        root << build_element('Obrazek', data[:obrazek]) if data.key? :obrazek
        root << build_element('Obrazek2', data[:obrazek2]) if data.key? :obrazek2
        root << build_element('Zarovnat', data[:zarovnat]) if data.key? :zarovnat
        root << build_element('Zarovnat2', data[:zarovnat2]) if data.key? :zarovnat2
        if data.key? :konfigurace
          root << Konfigurace.new('konfigurace', data[:konfigurace]).builder
        end
        if data.key? :definice_ceny
          root << DefiniceCeny.new('definiceCeny', data[:definice_ceny]).builder
        end
        root << build_element('Ceny', data[:ceny]) if data.key? :ceny
        root << build_element('Nastav', data[:nastav]) if data.key? :nastav
        root << build_element('Popis1', data[:popis1]) if data.key? :popis1
        root << build_element('Pozn1', data[:pozn1]) if data.key? :pozn1
        root << build_element('Popis2', data[:popis2]) if data.key? :popis2
        root << build_element('Pozn2', data[:pozn2]) if data.key? :pozn2
        root << build_element('Popis3', data[:popis3]) if data.key? :popis3
        root << build_element('Pozn3', data[:pozn3]) if data.key? :pozn3
        root << build_element('Hmotnost', data[:hmotnost]) if data.key? :hmotnost
        root << build_element('Objem', data[:objem]) if data.key? :objem
        root << build_element('KodKN', data[:kod_kn]) if data.key? :kod_kn
        root << build_element('PredmPln', data[:predm_pln]) if data.key? :predm_pln
        root << build_element('KodStatu', data[:kod_statu]) if data.key? :kod_statu
        root << build_element('TypKarty', data[:typ_karty]) if data.key? :typ_karty
        root << build_element('ZbozKuch', data[:zboz_kuch]) if data.key? :zboz_kuch
        root << build_element('iDoklPol', data[:i_dokl_pol]) if data.key? :i_dokl_pol
        root << build_element('iDoklAgend', data[:i_dokl_agend]) if data.key? :i_dokl_agend
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