require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/sklad_type'
require 'money_s3/parsers/km_karta_type'
require 'money_s3/parsers/vyrobni_cislo_type'
require 'money_s3/parsers/dodavka_type'
require 'money_s3/parsers/def_sub_pol_type'

module MoneyS3
  module Parsers
    class PolSklDoklType
      include BaseParser

      def nazev
        at :Nazev
      end

      def pocet_mj
        at :PocetMJ
      end

      def cena
        at :Cena
      end

      def valuty
        at :Valuty
      end

      def dph
        at :DPH
      end

      def cena_typ
        at :CenaTyp
      end

      def sleva
        at :Sleva
      end

      def cinnost
        at :Cinnost
      end

      def zakazka
        at :Zakazka
      end

      def stredisko
        at :Stredisko
      end

      def cenova_hlad
        at :CenovaHlad
      end

      def poznamka
        at :Poznamka
      end

      def vratka
        at :Vratka
      end

      def ucet_md
        at :UcetMD
      end

      def ucet_d
        at :UcetD
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

      def poriz_cena
        at :PorizCena
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

      def sklad
        submodel_at(SkladType, :Sklad)
      end

      def km_karta
        submodel_at(KmKartaType, :KmKarta)
      end

      def seznam_vc
        array_of_at(VyrobniCisloType, [:SeznamVC, :VyrobniCislo])
      end

      def seznam_dodavek
        array_of_at(DodavkaType, [:SeznamDodavek, :Dodavka])
      end

      def slozeni
        array_of_at(DefSubPolType, [:Slozeni, :SubPolozka])
      end

      def to_h
        hash = {}

        hash[:nazev] = nazev if has? :Nazev
        hash[:pocet_mj] = pocet_mj if has? :PocetMJ
        hash[:cena] = cena if has? :Cena
        hash[:valuty] = valuty if has? :Valuty
        hash[:dph] = dph if has? :DPH
        hash[:cena_typ] = cena_typ if has? :CenaTyp
        hash[:sleva] = sleva if has? :Sleva
        hash[:cinnost] = cinnost if has? :Cinnost
        hash[:zakazka] = zakazka if has? :Zakazka
        hash[:stredisko] = stredisko if has? :Stredisko
        hash[:cenova_hlad] = cenova_hlad if has? :CenovaHlad
        hash[:poznamka] = poznamka if has? :Poznamka
        hash[:vratka] = vratka if has? :Vratka
        hash[:ucet_md] = ucet_md if has? :UcetMD
        hash[:ucet_d] = ucet_d if has? :UcetD
        hash[:kod_statu_puv] = kod_statu_puv if has? :KodStatuPuv
        hash[:typ_transakce] = typ_transakce if has? :TypTransakce
        hash[:hmotnost] = hmotnost if has? :Hmotnost
        hash[:poriz_cena] = poriz_cena if has? :PorizCena
        hash[:cena_po_sleve] = cena_po_sleve if has? :CenaPoSleve
        hash[:zvl_rezim] = zvl_rezim if has? :ZvlRezim
        hash[:zvl_dph] = zvl_dph if has? :ZvlDPH
        hash[:rezim_eet] = rezim_eet if has? :RezimEET
        hash[:sklad] = sklad.to_h if has? :Sklad
        hash[:km_karta] = km_karta.to_h if has? :KmKarta
        hash[:seznam_vc] = seznam_vc.map(&:to_h) if has? :SeznamVC
        hash[:seznam_dodavek] = seznam_dodavek.map(&:to_h) if has? :SeznamDodavek
        hash[:slozeni] = slozeni.map(&:to_h) if has? :Slozeni

        hash
      end
    end
  end
end