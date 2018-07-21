module MoneyS3
  module Parsers
    class KmKartaType
      include ParserCore::BaseParser

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def mj
        at 'MJ'
      end

      def mj_attributes
        attributes_at 'MJ'
      end

      def uziv_code
        at 'UzivCode'
      end

      def uziv_code_attributes
        attributes_at 'UzivCode'
      end

      def guid
        at 'GUID'
      end

      def guid_attributes
        attributes_at 'GUID'
      end

      def katalog
        at 'Katalog'
      end

      def katalog_attributes
        attributes_at 'Katalog'
      end

      def bar_code
        at 'BarCode'
      end

      def bar_code_attributes
        attributes_at 'BarCode'
      end

      def bc_typ
        at 'BCTyp'
      end

      def bc_typ_attributes
        attributes_at 'BCTyp'
      end

      def typ_zar_doby
        at 'TypZarDoby'
      end

      def typ_zar_doby_attributes
        attributes_at 'TypZarDoby'
      end

      def zar_doba
        at 'ZarDoba'
      end

      def zar_doba_attributes
        attributes_at 'ZarDoba'
      end

      def ev_druhy
        at 'EvDruhy'
      end

      def ev_druhy_attributes
        attributes_at 'EvDruhy'
      end

      def ev_vyr_cis
        at 'EvVyrCis'
      end

      def ev_vyr_cis_attributes
        attributes_at 'EvVyrCis'
      end

      def des_mist
        at 'DesMist'
      end

      def des_mist_attributes
        attributes_at 'DesMist'
      end

      def obrazek
        at 'Obrazek'
      end

      def obrazek_attributes
        attributes_at 'Obrazek'
      end

      def obrazek2
        at 'Obrazek2'
      end

      def obrazek2_attributes
        attributes_at 'Obrazek2'
      end

      def zarovnat
        at 'Zarovnat'
      end

      def zarovnat_attributes
        attributes_at 'Zarovnat'
      end

      def zarovnat2
        at 'Zarovnat2'
      end

      def zarovnat2_attributes
        attributes_at 'Zarovnat2'
      end

      def konfigurace
        submodel_at(Konfigurace, 'konfigurace')
      end

      def definice_ceny
        submodel_at(DefiniceCeny, 'definiceCeny')
      end

      def ceny
        at 'Ceny'
      end

      def ceny_attributes
        attributes_at 'Ceny'
      end

      def nastav
        at 'Nastav'
      end

      def nastav_attributes
        attributes_at 'Nastav'
      end

      def popis1
        at 'Popis1'
      end

      def popis1_attributes
        attributes_at 'Popis1'
      end

      def pozn1
        at 'Pozn1'
      end

      def pozn1_attributes
        attributes_at 'Pozn1'
      end

      def popis2
        at 'Popis2'
      end

      def popis2_attributes
        attributes_at 'Popis2'
      end

      def pozn2
        at 'Pozn2'
      end

      def pozn2_attributes
        attributes_at 'Pozn2'
      end

      def popis3
        at 'Popis3'
      end

      def popis3_attributes
        attributes_at 'Popis3'
      end

      def pozn3
        at 'Pozn3'
      end

      def pozn3_attributes
        attributes_at 'Pozn3'
      end

      def hmotnost
        at 'Hmotnost'
      end

      def hmotnost_attributes
        attributes_at 'Hmotnost'
      end

      def objem
        at 'Objem'
      end

      def objem_attributes
        attributes_at 'Objem'
      end

      def kod_kn
        at 'KodKN'
      end

      def kod_kn_attributes
        attributes_at 'KodKN'
      end

      def predm_pln
        at 'PredmPln'
      end

      def predm_pln_attributes
        attributes_at 'PredmPln'
      end

      def kod_statu
        at 'KodStatu'
      end

      def kod_statu_attributes
        attributes_at 'KodStatu'
      end

      def typ_karty
        at 'TypKarty'
      end

      def typ_karty_attributes
        attributes_at 'TypKarty'
      end

      def zboz_kuch
        at 'ZbozKuch'
      end

      def zboz_kuch_attributes
        attributes_at 'ZbozKuch'
      end

      def i_dokl_pol
        at 'iDoklPol'
      end

      def i_dokl_pol_attributes
        attributes_at 'iDoklPol'
      end

      def i_dokl_agend
        at 'iDoklAgend'
      end

      def i_dokl_agend_attributes
        attributes_at 'iDoklAgend'
      end

      def slozeni
        array_of_at(KomponentaType, ['Slozeni', 'Komponenta'])
      end

      def seznam_parametru_karty
        array_of_at(ParametrKartaType, ['SeznamParametruKarty', 'ParametrKarty'])
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:mj] = mj if has? 'MJ'
        hash[:mj_attributes] = mj_attributes if has? 'MJ'
        hash[:uziv_code] = uziv_code if has? 'UzivCode'
        hash[:uziv_code_attributes] = uziv_code_attributes if has? 'UzivCode'
        hash[:guid] = guid if has? 'GUID'
        hash[:guid_attributes] = guid_attributes if has? 'GUID'
        hash[:katalog] = katalog if has? 'Katalog'
        hash[:katalog_attributes] = katalog_attributes if has? 'Katalog'
        hash[:bar_code] = bar_code if has? 'BarCode'
        hash[:bar_code_attributes] = bar_code_attributes if has? 'BarCode'
        hash[:bc_typ] = bc_typ if has? 'BCTyp'
        hash[:bc_typ_attributes] = bc_typ_attributes if has? 'BCTyp'
        hash[:typ_zar_doby] = typ_zar_doby if has? 'TypZarDoby'
        hash[:typ_zar_doby_attributes] = typ_zar_doby_attributes if has? 'TypZarDoby'
        hash[:zar_doba] = zar_doba if has? 'ZarDoba'
        hash[:zar_doba_attributes] = zar_doba_attributes if has? 'ZarDoba'
        hash[:ev_druhy] = ev_druhy if has? 'EvDruhy'
        hash[:ev_druhy_attributes] = ev_druhy_attributes if has? 'EvDruhy'
        hash[:ev_vyr_cis] = ev_vyr_cis if has? 'EvVyrCis'
        hash[:ev_vyr_cis_attributes] = ev_vyr_cis_attributes if has? 'EvVyrCis'
        hash[:des_mist] = des_mist if has? 'DesMist'
        hash[:des_mist_attributes] = des_mist_attributes if has? 'DesMist'
        hash[:obrazek] = obrazek if has? 'Obrazek'
        hash[:obrazek_attributes] = obrazek_attributes if has? 'Obrazek'
        hash[:obrazek2] = obrazek2 if has? 'Obrazek2'
        hash[:obrazek2_attributes] = obrazek2_attributes if has? 'Obrazek2'
        hash[:zarovnat] = zarovnat if has? 'Zarovnat'
        hash[:zarovnat_attributes] = zarovnat_attributes if has? 'Zarovnat'
        hash[:zarovnat2] = zarovnat2 if has? 'Zarovnat2'
        hash[:zarovnat2_attributes] = zarovnat2_attributes if has? 'Zarovnat2'
        hash[:konfigurace] = konfigurace.to_h if has? 'konfigurace'
        hash[:definice_ceny] = definice_ceny.to_h if has? 'definiceCeny'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:ceny_attributes] = ceny_attributes if has? 'Ceny'
        hash[:nastav] = nastav if has? 'Nastav'
        hash[:nastav_attributes] = nastav_attributes if has? 'Nastav'
        hash[:popis1] = popis1 if has? 'Popis1'
        hash[:popis1_attributes] = popis1_attributes if has? 'Popis1'
        hash[:pozn1] = pozn1 if has? 'Pozn1'
        hash[:pozn1_attributes] = pozn1_attributes if has? 'Pozn1'
        hash[:popis2] = popis2 if has? 'Popis2'
        hash[:popis2_attributes] = popis2_attributes if has? 'Popis2'
        hash[:pozn2] = pozn2 if has? 'Pozn2'
        hash[:pozn2_attributes] = pozn2_attributes if has? 'Pozn2'
        hash[:popis3] = popis3 if has? 'Popis3'
        hash[:popis3_attributes] = popis3_attributes if has? 'Popis3'
        hash[:pozn3] = pozn3 if has? 'Pozn3'
        hash[:pozn3_attributes] = pozn3_attributes if has? 'Pozn3'
        hash[:hmotnost] = hmotnost if has? 'Hmotnost'
        hash[:hmotnost_attributes] = hmotnost_attributes if has? 'Hmotnost'
        hash[:objem] = objem if has? 'Objem'
        hash[:objem_attributes] = objem_attributes if has? 'Objem'
        hash[:kod_kn] = kod_kn if has? 'KodKN'
        hash[:kod_kn_attributes] = kod_kn_attributes if has? 'KodKN'
        hash[:predm_pln] = predm_pln if has? 'PredmPln'
        hash[:predm_pln_attributes] = predm_pln_attributes if has? 'PredmPln'
        hash[:kod_statu] = kod_statu if has? 'KodStatu'
        hash[:kod_statu_attributes] = kod_statu_attributes if has? 'KodStatu'
        hash[:typ_karty] = typ_karty if has? 'TypKarty'
        hash[:typ_karty_attributes] = typ_karty_attributes if has? 'TypKarty'
        hash[:zboz_kuch] = zboz_kuch if has? 'ZbozKuch'
        hash[:zboz_kuch_attributes] = zboz_kuch_attributes if has? 'ZbozKuch'
        hash[:i_dokl_pol] = i_dokl_pol if has? 'iDoklPol'
        hash[:i_dokl_pol_attributes] = i_dokl_pol_attributes if has? 'iDoklPol'
        hash[:i_dokl_agend] = i_dokl_agend if has? 'iDoklAgend'
        hash[:i_dokl_agend_attributes] = i_dokl_agend_attributes if has? 'iDoklAgend'
        hash[:slozeni] = slozeni.map(&:to_h) if has? 'Slozeni'
        hash[:seznam_parametru_karty] = seznam_parametru_karty.map(&:to_h) if has? 'SeznamParametruKarty'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end