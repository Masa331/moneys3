require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/konfigurace'
require 'money_s3/parsers/definice_ceny'
require 'money_s3/parsers/komponenta_type'
require 'money_s3/parsers/parametr_karta_type'

module MoneyS3
  module Parsers
    class KmKartaType
      include BaseParser

      def popis
        at :Popis
      end

      def zkrat
        at :Zkrat
      end

      def pozn
        at :Pozn
      end

      def mj
        at :MJ
      end

      def uziv_code
        at :UzivCode
      end

      def guid
        at :GUID
      end

      def katalog
        at :Katalog
      end

      def bar_code
        at :BarCode
      end

      def bc_typ
        at :BCTyp
      end

      def typ_zar_doby
        at :TypZarDoby
      end

      def zar_doba
        at :ZarDoba
      end

      def ev_druhy
        at :EvDruhy
      end

      def ev_vyr_cis
        at :EvVyrCis
      end

      def des_mist
        at :DesMist
      end

      def obrazek
        at :Obrazek
      end

      def obrazek2
        at :Obrazek2
      end

      def zarovnat
        at :Zarovnat
      end

      def zarovnat2
        at :Zarovnat2
      end

      def ceny
        at :Ceny
      end

      def nastav
        at :Nastav
      end

      def popis1
        at :Popis1
      end

      def pozn1
        at :Pozn1
      end

      def popis2
        at :Popis2
      end

      def pozn2
        at :Pozn2
      end

      def popis3
        at :Popis3
      end

      def pozn3
        at :Pozn3
      end

      def hmotnost
        at :Hmotnost
      end

      def objem
        at :Objem
      end

      def kod_kn
        at :KodKN
      end

      def predm_pln
        at :PredmPln
      end

      def kod_statu
        at :KodStatu
      end

      def typ_karty
        at :TypKarty
      end

      def zboz_kuch
        at :ZbozKuch
      end

      def i_dokl_pol
        at :iDoklPol
      end

      def i_dokl_agend
        at :iDoklAgend
      end

      def konfigurace
        submodel_at(Konfigurace, :konfigurace)
      end

      def definice_ceny
        submodel_at(DefiniceCeny, :definiceCeny)
      end

      def slozeni
        array_of_at(KomponentaType, [:Slozeni, :Komponenta])
      end

      def seznam_parametru_karty
        array_of_at(ParametrKartaType, [:SeznamParametruKarty, :ParametrKarty])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        hash = {}

        hash[:popis] = popis if raw.key? :Popis
        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:mj] = mj if raw.key? :MJ
        hash[:uziv_code] = uziv_code if raw.key? :UzivCode
        hash[:guid] = guid if raw.key? :GUID
        hash[:katalog] = katalog if raw.key? :Katalog
        hash[:bar_code] = bar_code if raw.key? :BarCode
        hash[:bc_typ] = bc_typ if raw.key? :BCTyp
        hash[:typ_zar_doby] = typ_zar_doby if raw.key? :TypZarDoby
        hash[:zar_doba] = zar_doba if raw.key? :ZarDoba
        hash[:ev_druhy] = ev_druhy if raw.key? :EvDruhy
        hash[:ev_vyr_cis] = ev_vyr_cis if raw.key? :EvVyrCis
        hash[:des_mist] = des_mist if raw.key? :DesMist
        hash[:obrazek] = obrazek if raw.key? :Obrazek
        hash[:obrazek2] = obrazek2 if raw.key? :Obrazek2
        hash[:zarovnat] = zarovnat if raw.key? :Zarovnat
        hash[:zarovnat2] = zarovnat2 if raw.key? :Zarovnat2
        hash[:ceny] = ceny if raw.key? :Ceny
        hash[:nastav] = nastav if raw.key? :Nastav
        hash[:popis1] = popis1 if raw.key? :Popis1
        hash[:pozn1] = pozn1 if raw.key? :Pozn1
        hash[:popis2] = popis2 if raw.key? :Popis2
        hash[:pozn2] = pozn2 if raw.key? :Pozn2
        hash[:popis3] = popis3 if raw.key? :Popis3
        hash[:pozn3] = pozn3 if raw.key? :Pozn3
        hash[:hmotnost] = hmotnost if raw.key? :Hmotnost
        hash[:objem] = objem if raw.key? :Objem
        hash[:kod_kn] = kod_kn if raw.key? :KodKN
        hash[:predm_pln] = predm_pln if raw.key? :PredmPln
        hash[:kod_statu] = kod_statu if raw.key? :KodStatu
        hash[:typ_karty] = typ_karty if raw.key? :TypKarty
        hash[:zboz_kuch] = zboz_kuch if raw.key? :ZbozKuch
        hash[:i_dokl_pol] = i_dokl_pol if raw.key? :iDoklPol
        hash[:i_dokl_agend] = i_dokl_agend if raw.key? :iDoklAgend
        hash[:konfigurace] = konfigurace.to_h if raw.key? :konfigurace
        hash[:definice_ceny] = definice_ceny.to_h if raw.key? :definiceCeny
        hash[:slozeni] = slozeni.map(&:to_h) if raw.key? :Slozeni
        hash[:seznam_parametru_karty] = seznam_parametru_karty.map(&:to_h) if raw.key? :SeznamParametruKarty
        hash[:dokumenty] = dokumenty if raw.key? :Dokumenty

        hash
      end
    end
  end
end