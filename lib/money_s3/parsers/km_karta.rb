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
        { popis: popis,
          zkrat: zkrat,
          pozn: pozn,
          mj: mj,
          uziv_code: uziv_code,
          guid: guid,
          katalog: katalog,
          bar_code: bar_code,
          bc_typ: bc_typ,
          typ_zar_doby: typ_zar_doby,
          zar_doba: zar_doba,
          ev_druhy: ev_druhy,
          ev_vyr_cis: ev_vyr_cis,
          des_mist: des_mist,
          obrazek: obrazek,
          obrazek2: obrazek2,
          zarovnat: zarovnat,
          zarovnat2: zarovnat2,
          ceny: ceny,
          nastav: nastav,
          popis1: popis1,
          pozn1: pozn1,
          popis2: popis2,
          pozn2: pozn2,
          popis3: popis3,
          pozn3: pozn3,
          hmotnost: hmotnost,
          objem: objem,
          kod_kn: kod_kn,
          predm_pln: predm_pln,
          kod_statu: kod_statu,
          typ_karty: typ_karty,
          zboz_kuch: zboz_kuch,
          i_dokl_pol: i_dokl_pol,
          i_dokl_agend: i_dokl_agend,
          konfigurace: konfigurace.to_h,
          definice_ceny: definice_ceny.to_h,
          slozeni: slozeni.map(&:to_h),
          seznam_parametru_karty: seznam_parametru_karty.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end