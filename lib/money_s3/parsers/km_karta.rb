require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/konfigurace'
require 'money_s3/parsers/definice_ceny'
require 'money_s3/parsers/komponenta_type'
require 'money_s3/parsers/parametr_karta_type'

module MoneyS3
  module Parsers
    class KmKarta
      include BaseParser

      def popis
        at 'Popis'
      end

      def zkrat
        at 'Zkrat'
      end

      def pozn
        at 'Pozn'
      end

      def mj
        at 'MJ'
      end

      def uziv_code
        at 'UzivCode'
      end

      def guid
        at 'GUID'
      end

      def katalog
        at 'Katalog'
      end

      def bar_code
        at 'BarCode'
      end

      def bc_typ
        at 'BCTyp'
      end

      def typ_zar_doby
        at 'TypZarDoby'
      end

      def zar_doba
        at 'ZarDoba'
      end

      def ev_druhy
        at 'EvDruhy'
      end

      def ev_vyr_cis
        at 'EvVyrCis'
      end

      def des_mist
        at 'DesMist'
      end

      def obrazek
        at 'Obrazek'
      end

      def obrazek2
        at 'Obrazek2'
      end

      def zarovnat
        at 'Zarovnat'
      end

      def zarovnat2
        at 'Zarovnat2'
      end

      def ceny
        at 'Ceny'
      end

      def nastav
        at 'Nastav'
      end

      def popis1
        at 'Popis1'
      end

      def pozn1
        at 'Pozn1'
      end

      def popis2
        at 'Popis2'
      end

      def pozn2
        at 'Pozn2'
      end

      def popis3
        at 'Popis3'
      end

      def pozn3
        at 'Pozn3'
      end

      def hmotnost
        at 'Hmotnost'
      end

      def objem
        at 'Objem'
      end

      def kod_kn
        at 'KodKN'
      end

      def predm_pln
        at 'PredmPln'
      end

      def kod_statu
        at 'KodStatu'
      end

      def typ_karty
        at 'TypKarty'
      end

      def zboz_kuch
        at 'ZbozKuch'
      end

      def i_dokl_pol
        at 'iDoklPol'
      end

      def i_dokl_agend
        at 'iDoklAgend'
      end

      def konfigurace
        submodel_at(Konfigurace, 'konfigurace')
      end

      def definice_ceny
        submodel_at(DefiniceCeny, 'definiceCeny')
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

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:popis] = popis if has? 'Popis'
        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:mj] = mj if has? 'MJ'
        hash[:uziv_code] = uziv_code if has? 'UzivCode'
        hash[:guid] = guid if has? 'GUID'
        hash[:katalog] = katalog if has? 'Katalog'
        hash[:bar_code] = bar_code if has? 'BarCode'
        hash[:bc_typ] = bc_typ if has? 'BCTyp'
        hash[:typ_zar_doby] = typ_zar_doby if has? 'TypZarDoby'
        hash[:zar_doba] = zar_doba if has? 'ZarDoba'
        hash[:ev_druhy] = ev_druhy if has? 'EvDruhy'
        hash[:ev_vyr_cis] = ev_vyr_cis if has? 'EvVyrCis'
        hash[:des_mist] = des_mist if has? 'DesMist'
        hash[:obrazek] = obrazek if has? 'Obrazek'
        hash[:obrazek2] = obrazek2 if has? 'Obrazek2'
        hash[:zarovnat] = zarovnat if has? 'Zarovnat'
        hash[:zarovnat2] = zarovnat2 if has? 'Zarovnat2'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:nastav] = nastav if has? 'Nastav'
        hash[:popis1] = popis1 if has? 'Popis1'
        hash[:pozn1] = pozn1 if has? 'Pozn1'
        hash[:popis2] = popis2 if has? 'Popis2'
        hash[:pozn2] = pozn2 if has? 'Pozn2'
        hash[:popis3] = popis3 if has? 'Popis3'
        hash[:pozn3] = pozn3 if has? 'Pozn3'
        hash[:hmotnost] = hmotnost if has? 'Hmotnost'
        hash[:objem] = objem if has? 'Objem'
        hash[:kod_kn] = kod_kn if has? 'KodKN'
        hash[:predm_pln] = predm_pln if has? 'PredmPln'
        hash[:kod_statu] = kod_statu if has? 'KodStatu'
        hash[:typ_karty] = typ_karty if has? 'TypKarty'
        hash[:zboz_kuch] = zboz_kuch if has? 'ZbozKuch'
        hash[:i_dokl_pol] = i_dokl_pol if has? 'iDoklPol'
        hash[:i_dokl_agend] = i_dokl_agend if has? 'iDoklAgend'
        hash[:konfigurace] = konfigurace.to_h_with_attrs if has? 'konfigurace'
        hash[:definice_ceny] = definice_ceny.to_h_with_attrs if has? 'definiceCeny'
        hash[:slozeni] = slozeni.map(&:to_h_with_attrs) if has? 'Slozeni'
        hash[:seznam_parametru_karty] = seznam_parametru_karty.map(&:to_h_with_attrs) if has? 'SeznamParametruKarty'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end