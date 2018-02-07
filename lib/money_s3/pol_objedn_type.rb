require 'money_s3/base_element'
require 'money_s3/souhrn_dph_pol_type'
require 'money_s3/seznam_vc'
require 'money_s3/slozeni'

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
      element_xml = at :SouhrnDPH

      SouhrnDPHPolType.new(element_xml) if element_xml
    end

    def seznam_vc
      element_xml = at :SeznamVC

      SeznamVC.new(element_xml) if element_xml
    end

    def slozeni
      element_xml = at :Slozeni

      Slozeni.new(element_xml) if element_xml
    end
  end
end