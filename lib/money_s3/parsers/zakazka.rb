require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/firma_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/kusovnik_type'

module MoneyS3
  module Parsers
    class Zakazka
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def nazev
        at :Nazev
      end

      def obch_prip
        at :ObchPrip
      end

      def pozn
        at :Pozn
      end

      def dat_pl_zah
        at :DatPlZah
      end

      def dat_zah
        at :DatZah
      end

      def dat_pl_pred
        at :DatPlPred
      end

      def dat_pred
        at :DatPred
      end

      def zaruka_do
        at :ZarukaDo
      end

      def odp_os
        at :OdpOs
      end

      def druh_zak
        at :DruhZak
      end

      def typ_zak
        at :TypZak
      end

      def stav_zak
        at :StavZak
      end

      def hodnoceni
        at :Hodnoceni
      end

      def c_objednavk
        at :CObjednavk
      end

      def vystavil
        at :Vystavil
      end

      def dod_odb
        submodel_at(FirmaType, :DodOdb)
      end

      def vlajky
        submodel_at(Vlajky, :Vlajky)
      end

      def seznam_zakazkovy_kusovnik
        array_of_at(KusovnikType, [:SeznamZakazkovyKusovnik, :ZakazkovyKusovnik])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        { zkrat: zkrat,
          nazev: nazev,
          obch_prip: obch_prip,
          pozn: pozn,
          dat_pl_zah: dat_pl_zah,
          dat_zah: dat_zah,
          dat_pl_pred: dat_pl_pred,
          dat_pred: dat_pred,
          zaruka_do: zaruka_do,
          odp_os: odp_os,
          druh_zak: druh_zak,
          typ_zak: typ_zak,
          stav_zak: stav_zak,
          hodnoceni: hodnoceni,
          c_objednavk: c_objednavk,
          vystavil: vystavil,
          dod_odb: dod_odb.to_h,
          vlajky: vlajky.to_h,
          seznam_zakazkovy_kusovnik: seznam_zakazkovy_kusovnik.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end