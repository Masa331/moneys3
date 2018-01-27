require 'money_s3/base_element'
require 'money_s3/valuty'
require 'money_s3/doklad_firma_type'
require 'money_s3/konec_prij_firma_type'
require 'money_s3/import'
require 'money_s3/eshop'
require 'money_s3/prepravce_type'
require 'money_s3/typ_zasilky_type'
require 'money_s3/prepr_dopln_udaj_type'
require 'money_s3/prepr_dopln_udaj_type'
require 'money_s3/prepr_dopln_udaj_type'
require 'money_s3/prepr_seznamsluzeb'
require 'money_s3/seznam_zal_polozek'
require 'money_s3/uhrada_type'
require 'money_s3/moje_firma_type'
require 'money_s3/seznam_nep_plateb'
require 'money_s3/vlajky'
require 'money_s3/vazba_type'
require 'money_s3/dokumenty'
require 'money_s3/pol_faktury_type'

module MoneyS3
  class FakturaType
    include BaseElement

    def doklad
      at :Doklad
    end

    def ev_cis_dokl
      at :EvCisDokl
    end

    def zpusob_uctovani
      at :ZpusobUctovani
    end

    def guid
      at :GUID
    end

    def rada
      at :Rada
    end

    def cis_rada
      at :CisRada
    end

    def u_doklad
      at :UDoklad
    end

    def popis
      at :Popis
    end

    def vystaveno
      at :Vystaveno
    end

    def dat_uc_pr
      at :DatUcPr
    end

    def plneno_dph
      at :PlnenoDPH
    end

    def splatno
      at :Splatno
    end

    def uhrazeno
      at :Uhrazeno
    end

    def doruceno
      at :Doruceno
    end

    def dat_sk_poh
      at :DatSkPoh
    end

    def konst_sym
      at :KonstSym
    end

    def kod_dph
      at :KodDPH
    end

    def ucel_zd_pl
      at :UcelZdPl
    end

    def plnen_dph
      at :PlnenDPH
    end

    def zjedn_d
      at :ZjednD
    end

    def var_symbol
      at :VarSymbol
    end

    def spec_symbol
      at :SpecSymbol
    end

    def prijat_dokl
      at :PrijatDokl
    end

    def par_symbol
      at :ParSymbol
    end

    def puv_doklad
      at :PuvDoklad
    end

    def zakazka
      at :Zakazka
    end

    def c_objednavk
      at :CObjednavk
    end

    def ucet
      at :Ucet
    end

    def druh
      at :Druh
    end

    def dobropis
      at :Dobropis
    end

    def dobr_duzp
      at :DobrDUZP
    end

    def zp_dopravy
      at :ZpDopravy
    end

    def uhrada
      at :Uhrada
    end

    def pred_kontac
      at :PredKontac
    end

    def cinnost
      at :Cinnost
    end

    def stat_moss
      at :StatMOSS
    end

    def zp_vyp_dph
      at :ZpVypDPH
    end

    def proplatit
      at :Proplatit
    end

    def vyuctovano
      at :Vyuctovano
    end

    def sazba_dph1
      at :SazbaDPH1
    end

    def sazba_dph2
      at :SazbaDPH2
    end

    def typ
      at :Typ
    end

    def vystavil
      at :Vystavil
    end

    def prik_uhrady
      at :PrikUhrady
    end

    def pri_uhr_zbyv
      at :PriUhrZbyv
    end

    def poznamka
      at :Poznamka
    end

    def stredisko
      at :Stredisko
    end

    def text_pred_fa
      at :TextPredFa
    end

    def text_za_fa
      at :TextZaFa
    end

    def text_pred_dl
      at :TextPredDL
    end

    def text_za_dl
      at :TextZaDL
    end

    def date_upom1
      at :DateUpom1
    end

    def date_upom2
      at :DateUpom2
    end

    def date_upom_l
      at :DateUpomL
    end

    def valuty_prop
      at :ValutyProp
    end

    def sum_zaloha
      at :SumZaloha
    end

    def sum_zaloha_c
      at :SumZalohaC
    end

    def typ_transakce
      at :TypTransakce
    end

    def dodaci_podm
      at :DodaciPodm
    end

    def druh_dopravy
      at :DruhDopravy
    end

    def st_odesl_urc
      at :StOdeslUrc
    end

    def doprav_tuz
      at :DopravTuz
    end

    def doprav_zahr
      at :DopravZahr
    end

    def datum_its
      at :DatumITS
    end

    def sleva
      at :Sleva
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

    def i_doklad_id
      at :iDokladID
    end

    def i_dokl_agend
      at :iDoklAgend
    end

    def pojisteno
      at :Pojisteno
    end

    def celkem
      at :Celkem
    end

    def valuty
      element_xml = at :Valuty

      Valuty.new(element_xml) if element_xml
    end

    def dod_odb
      element_xml = at :DodOdb

      DokladFirmaType.new(element_xml) if element_xml
    end

    def konec_prij
      element_xml = at :KonecPrij

      KonecPrijFirmaType.new(element_xml) if element_xml
    end

    def import
      element_xml = at :Import

      Import.new(element_xml) if element_xml
    end

    def eshop
      element_xml = at :eshop

      Eshop.new(element_xml) if element_xml
    end

    def prepravce
      element_xml = at :Prepravce

      PrepravceType.new(element_xml) if element_xml
    end

    def typ_zasillky
      element_xml = at :TypZasillky

      TypZasilkyType.new(element_xml) if element_xml
    end

    def prepr_vyplatne
      element_xml = at :Prepr_Vyplatne

      PreprDoplnUdajType.new(element_xml) if element_xml
    end

    def prepr_uhrada_dobirky
      element_xml = at :Prepr_UhradaDobirky

      PreprDoplnUdajType.new(element_xml) if element_xml
    end

    def prepr_trida
      element_xml = at :Prepr_Trida

      PreprDoplnUdajType.new(element_xml) if element_xml
    end

    def prepr_seznam_sluzeb
      element_xml = at :Prepr_SeznamSluzeb

      PreprSeznamsluzeb.new(element_xml) if element_xml
    end

    def seznam_polozek
      elements = raw[:SeznamPolozek]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        PolFakturyType.new(raw[:Polozka])
      end
    end

    def seznam_zal_polozek
      element_xml = at :SeznamZalPolozek

      SeznamZalPolozek.new(element_xml) if element_xml
    end

    def seznam_uhrad
      elements = raw[:SeznamUhrad]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        UhradaType.new(raw[:Uhrada])
      end
    end

    def moje_firma
      element_xml = at :MojeFirma

      MojeFirmaType.new(element_xml) if element_xml
    end

    def seznam_nep_plateb
      element_xml = at :SeznamNepPlateb

      SeznamNepPlateb.new(element_xml) if element_xml
    end

    def vlajky
      element_xml = at :Vlajky

      Vlajky.new(element_xml) if element_xml
    end

    def seznam_vazeb
      elements = raw[:SeznamVazeb]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        VazbaType.new(raw[:Vazba])
      end
    end

    def dokumenty
      element_xml = at :Dokumenty

      Dokumenty.new(element_xml) if element_xml
    end

    def souhrn_dph
      element_xml = at :SouhrnDPH

      SouhrnDPHType.new(element_xml) if element_xml
    end
  end
end
