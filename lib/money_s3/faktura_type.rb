require 'money_s3/base_element'
require 'money_s3/souhrn_dph_type'
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
require 'money_s3/moje_firma_type'
require 'money_s3/vlajky'
require 'money_s3/prepr_dopln_udaj_type'
require 'money_s3/pol_faktury_type'
require 'money_s3/pol_objedn_type'
require 'money_s3/uhrada_type'
require 'money_s3/nep_platba_type'
require 'money_s3/vazba_type'

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

    def celkem
      at :Celkem
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

    def souhrn_dph
      submodel_at(SouhrnDPHType, :SouhrnDPH)
    end

    def valuty
      submodel_at(Valuty, :Valuty)
    end

    def dod_odb
      submodel_at(DokladFirmaType, :DodOdb)
    end

    def konec_prij
      submodel_at(KonecPrijFirmaType, :KonecPrij)
    end

    def import
      submodel_at(Import, :Import)
    end

    def eshop
      submodel_at(Eshop, :eshop)
    end

    def prepravce
      submodel_at(PrepravceType, :Prepravce)
    end

    def typ_zasillky
      submodel_at(TypZasilkyType, :TypZasillky)
    end

    def prepr_vyplatne
      submodel_at(PreprDoplnUdajType, :Prepr_Vyplatne)
    end

    def prepr_uhrada_dobirky
      submodel_at(PreprDoplnUdajType, :Prepr_UhradaDobirky)
    end

    def prepr_trida
      submodel_at(PreprDoplnUdajType, :Prepr_Trida)
    end

    def moje_firma
      submodel_at(MojeFirmaType, :MojeFirma)
    end

    def vlajky
      submodel_at(Vlajky, :Vlajky)
    end

    def prepr_seznam_sluzeb
      array_of_at(PreprDoplnUdajType, [:Prepr_SeznamSluzeb, :Prepr_Sluzba])
    end

    def seznam_polozek
      array_of_at(PolFakturyType, [:SeznamPolozek, :Polozka])
    end

    def seznam_zal_polozek
      array_of_at(PolObjednType, [:SeznamZalPolozek, :Polozka])
    end

    def seznam_uhrad
      array_of_at(UhradaType, [:SeznamUhrad, :Uhrada])
    end

    def seznam_nep_plateb
      array_of_at(NepPlatbaType, [:SeznamNepPlateb, :NepPlatba])
    end

    def seznam_vazeb
      array_of_at(VazbaType, [:SeznamVazeb, :Vazba])
    end

    def dokumenty
      array_of_at(String, [:Dokumenty, :Dokument])
    end
  end
end
