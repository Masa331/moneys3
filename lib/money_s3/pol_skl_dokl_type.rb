require 'money_s3/base_element'
require 'money_s3/seznam_vc'
require 'money_s3/seznam_dodavek'
require 'money_s3/sklad_type'
require 'money_s3/km_karta_type'
require 'money_s3/slozeni'

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

    def seznam_vc
      element_xml = at :SeznamVC

      SeznamVC.new(element_xml) if element_xml
    end

    def seznam_dodavek
      element_xml = at :SeznamDodavek

      SeznamDodavek.new(element_xml) if element_xml
    end

    def sklad
      element_xml = at :Sklad

      SkladType.new(element_xml) if element_xml
    end

    def km_karta
      element_xml = at :KmKarta

      KmKartaType.new(element_xml) if element_xml
    end

    def slozeni
      element_xml = at :Slozeni

      Slozeni.new(element_xml) if element_xml
    end
  end
end
