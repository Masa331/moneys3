require 'money_s3/base_element'
require 'money_s3/sklad_type'
require 'money_s3/km_karta_type'
require 'money_s3/vyrobni_cislo_type'
require 'money_s3/dodavka_type'
require 'money_s3/def_sub_pol_type'

module MoneyS3
  class PolSklDoklType
    include BaseElement

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
      { nazev: nazev,
        pocet_mj: pocet_mj,
        cena: cena,
        valuty: valuty,
        dph: dph,
        cena_typ: cena_typ,
        sleva: sleva,
        cinnost: cinnost,
        zakazka: zakazka,
        stredisko: stredisko,
        cenova_hlad: cenova_hlad,
        poznamka: poznamka,
        vratka: vratka,
        ucet_md: ucet_md,
        ucet_d: ucet_d,
        kod_statu_puv: kod_statu_puv,
        typ_transakce: typ_transakce,
        hmotnost: hmotnost,
        poriz_cena: poriz_cena,
        cena_po_sleve: cena_po_sleve,
        zvl_rezim: zvl_rezim,
        zvl_dph: zvl_dph,
        rezim_eet: rezim_eet,
        sklad: sklad.to_h,
        km_karta: km_karta.to_h,
        seznam_vc: seznam_vc.map(&:to_h),
        seznam_dodavek: seznam_dodavek.map(&:to_h),
        slozeni: slozeni.map(&:to_h)
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
