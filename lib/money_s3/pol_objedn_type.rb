require 'money_s3/base_element'
require 'money_s3/souhrn_dph_pol_type'
require 'money_s3/sklad_type'
require 'money_s3/km_karta_type'
require 'money_s3/neskl_polozka'
require 'money_s3/vyrobni_cislo_type'
require 'money_s3/sub_pol_obj_type'

module MoneyS3
  class PolObjednType
    include BaseElement

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
      { popis: popis,
        poznamka: poznamka,
        pocet_mj: pocet_mj,
        zbyva_mj: zbyva_mj,
        cena: cena,
        sazba_dph: sazba_dph,
        typ_ceny: typ_ceny,
        sleva: sleva,
        vystaveno: vystaveno,
        vyridit_nej: vyridit_nej,
        vyridit_do: vyridit_do,
        vyrizeno: vyrizeno,
        poradi: poradi,
        stredisko: stredisko,
        zakazka: zakazka,
        cinnost: cinnost,
        cenova_hlad: cenova_hlad,
        valuty: valuty,
        kod_statu_puv: kod_statu_puv,
        typ_transakce: typ_transakce,
        hmotnost: hmotnost,
        cena_po_sleve: cena_po_sleve,
        zvl_rezim: zvl_rezim,
        zvl_dph: zvl_dph,
        rezim_eet: rezim_eet,
        pred_pc: pred_pc,
        souhrn_dph: souhrn_dph.to_h,
        sklad: sklad.to_h,
        km_karta: km_karta.to_h,
        neskl_polozka: neskl_polozka.to_h,
        seznam_vc: seznam_vc.map(&:to_h),
        slozeni: slozeni.map(&:to_h)
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
