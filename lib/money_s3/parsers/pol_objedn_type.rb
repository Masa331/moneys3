require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/souhrn_dph_pol_type'
require 'money_s3/parsers/sklad_type'
require 'money_s3/parsers/km_karta_type'
require 'money_s3/parsers/neskl_polozka'
require 'money_s3/parsers/vyrobni_cislo_type'
require 'money_s3/parsers/sub_pol_obj_type'

module MoneyS3
  module Parsers
    class PolObjednType
      include BaseParser

      def popis
        at :Popis
      end

      def poznamka
        at :Poznamka
      end

      def pocet_mj
        at :PocetMJ
      end

      def zbyva_mj
        at :ZbyvaMJ
      end

      def cena
        at :Cena
      end

      def sazba_dph
        at :SazbaDPH
      end

      def typ_ceny
        at :TypCeny
      end

      def sleva
        at :Sleva
      end

      def vystaveno
        at :Vystaveno
      end

      def vyridit_nej
        at :VyriditNej
      end

      def vyridit_do
        at :Vyridit_do
      end

      def vyrizeno
        at :Vyrizeno
      end

      def poradi
        at :Poradi
      end

      def stredisko
        at :Stredisko
      end

      def zakazka
        at :Zakazka
      end

      def cinnost
        at :Cinnost
      end

      def cenova_hlad
        at :CenovaHlad
      end

      def valuty
        at :Valuty
      end

      def kod_statu_puv
        at :KodStatuPuv
      end

      def typ_transakce
        at :TypTransakce
      end

      def hmotnost
        at :Hmotnost
      end

      def cena_po_sleve
        at :CenaPoSleve
      end

      def zvl_rezim
        at :ZvlRezim
      end

      def zvl_dph
        at :ZvlDPH
      end

      def rezim_eet
        at :RezimEET
      end

      def pred_pc
        at :PredPC
      end

      def souhrn_dph
        submodel_at(SouhrnDPHPolType, :SouhrnDPH)
      end

      def sklad
        submodel_at(SkladType, :Sklad)
      end

      def km_karta
        submodel_at(KmKartaType, :KmKarta)
      end

      def neskl_polozka
        submodel_at(NesklPolozka, :NesklPolozka)
      end

      def seznam_vc
        array_of_at(VyrobniCisloType, [:SeznamVC, :VyrobniCislo])
      end

      def slozeni
        array_of_at(SubPolObjType, [:Slozeni, :SubPolozka])
      end

      def to_h
        hash = {}

        hash[:popis] = popis if raw.key? :Popis
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:pocet_mj] = pocet_mj if raw.key? :PocetMJ
        hash[:zbyva_mj] = zbyva_mj if raw.key? :ZbyvaMJ
        hash[:cena] = cena if raw.key? :Cena
        hash[:sazba_dph] = sazba_dph if raw.key? :SazbaDPH
        hash[:typ_ceny] = typ_ceny if raw.key? :TypCeny
        hash[:sleva] = sleva if raw.key? :Sleva
        hash[:vystaveno] = vystaveno if raw.key? :Vystaveno
        hash[:vyridit_nej] = vyridit_nej if raw.key? :VyriditNej
        hash[:vyridit_do] = vyridit_do if raw.key? :Vyridit_do
        hash[:vyrizeno] = vyrizeno if raw.key? :Vyrizeno
        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:stredisko] = stredisko if raw.key? :Stredisko
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:cenova_hlad] = cenova_hlad if raw.key? :CenovaHlad
        hash[:valuty] = valuty if raw.key? :Valuty
        hash[:kod_statu_puv] = kod_statu_puv if raw.key? :KodStatuPuv
        hash[:typ_transakce] = typ_transakce if raw.key? :TypTransakce
        hash[:hmotnost] = hmotnost if raw.key? :Hmotnost
        hash[:cena_po_sleve] = cena_po_sleve if raw.key? :CenaPoSleve
        hash[:zvl_rezim] = zvl_rezim if raw.key? :ZvlRezim
        hash[:zvl_dph] = zvl_dph if raw.key? :ZvlDPH
        hash[:rezim_eet] = rezim_eet if raw.key? :RezimEET
        hash[:pred_pc] = pred_pc if raw.key? :PredPC
        hash[:souhrn_dph] = souhrn_dph.to_h if raw.key? :SouhrnDPH
        hash[:sklad] = sklad.to_h if raw.key? :Sklad
        hash[:km_karta] = km_karta.to_h if raw.key? :KmKarta
        hash[:neskl_polozka] = neskl_polozka.to_h if raw.key? :NesklPolozka
        hash[:seznam_vc] = seznam_vc.map(&:to_h) if raw.key? :SeznamVC
        hash[:slozeni] = slozeni.map(&:to_h) if raw.key? :Slozeni

        hash
      end
    end
  end
end