require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/valuty'
require 'money_s3/parsers/doklad_firma_type'
require 'money_s3/parsers/konec_prij_firma_type'
require 'money_s3/parsers/import'
require 'money_s3/parsers/eshop'
require 'money_s3/parsers/prepravce_type'
require 'money_s3/parsers/typ_zasilky_type'
require 'money_s3/parsers/prepr_dopln_udaj_type'
require 'money_s3/parsers/moje_firma_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/souhrn_dph_type'
require 'money_s3/parsers/prepr_dopln_udaj_type'
require 'money_s3/parsers/pol_faktury_type'
require 'money_s3/parsers/pol_objedn_type'
require 'money_s3/parsers/uhrada_type'
require 'money_s3/parsers/nep_platba_type'
require 'money_s3/parsers/vazba_type'

module MoneyS3
  module Parsers
    class FaktVyd
      include BaseParser

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

      def souhrn_dph
        submodel_at(SouhrnDPHType, :SouhrnDPH)
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

      def to_h
        hash = {}

        hash[:doklad] = doklad if raw.key? :Doklad
        hash[:ev_cis_dokl] = ev_cis_dokl if raw.key? :EvCisDokl
        hash[:zpusob_uctovani] = zpusob_uctovani if raw.key? :ZpusobUctovani
        hash[:guid] = guid if raw.key? :GUID
        hash[:rada] = rada if raw.key? :Rada
        hash[:cis_rada] = cis_rada if raw.key? :CisRada
        hash[:u_doklad] = u_doklad if raw.key? :UDoklad
        hash[:popis] = popis if raw.key? :Popis
        hash[:vystaveno] = vystaveno if raw.key? :Vystaveno
        hash[:dat_uc_pr] = dat_uc_pr if raw.key? :DatUcPr
        hash[:plneno_dph] = plneno_dph if raw.key? :PlnenoDPH
        hash[:splatno] = splatno if raw.key? :Splatno
        hash[:uhrazeno] = uhrazeno if raw.key? :Uhrazeno
        hash[:doruceno] = doruceno if raw.key? :Doruceno
        hash[:dat_sk_poh] = dat_sk_poh if raw.key? :DatSkPoh
        hash[:konst_sym] = konst_sym if raw.key? :KonstSym
        hash[:kod_dph] = kod_dph if raw.key? :KodDPH
        hash[:ucel_zd_pl] = ucel_zd_pl if raw.key? :UcelZdPl
        hash[:plnen_dph] = plnen_dph if raw.key? :PlnenDPH
        hash[:zjedn_d] = zjedn_d if raw.key? :ZjednD
        hash[:var_symbol] = var_symbol if raw.key? :VarSymbol
        hash[:spec_symbol] = spec_symbol if raw.key? :SpecSymbol
        hash[:prijat_dokl] = prijat_dokl if raw.key? :PrijatDokl
        hash[:par_symbol] = par_symbol if raw.key? :ParSymbol
        hash[:puv_doklad] = puv_doklad if raw.key? :PuvDoklad
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:c_objednavk] = c_objednavk if raw.key? :CObjednavk
        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:druh] = druh if raw.key? :Druh
        hash[:dobropis] = dobropis if raw.key? :Dobropis
        hash[:dobr_duzp] = dobr_duzp if raw.key? :DobrDUZP
        hash[:zp_dopravy] = zp_dopravy if raw.key? :ZpDopravy
        hash[:uhrada] = uhrada if raw.key? :Uhrada
        hash[:pred_kontac] = pred_kontac if raw.key? :PredKontac
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:stat_moss] = stat_moss if raw.key? :StatMOSS
        hash[:zp_vyp_dph] = zp_vyp_dph if raw.key? :ZpVypDPH
        hash[:proplatit] = proplatit if raw.key? :Proplatit
        hash[:vyuctovano] = vyuctovano if raw.key? :Vyuctovano
        hash[:sazba_dph1] = sazba_dph1 if raw.key? :SazbaDPH1
        hash[:sazba_dph2] = sazba_dph2 if raw.key? :SazbaDPH2
        hash[:typ] = typ if raw.key? :Typ
        hash[:vystavil] = vystavil if raw.key? :Vystavil
        hash[:prik_uhrady] = prik_uhrady if raw.key? :PrikUhrady
        hash[:pri_uhr_zbyv] = pri_uhr_zbyv if raw.key? :PriUhrZbyv
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:stredisko] = stredisko if raw.key? :Stredisko
        hash[:text_pred_fa] = text_pred_fa if raw.key? :TextPredFa
        hash[:text_za_fa] = text_za_fa if raw.key? :TextZaFa
        hash[:text_pred_dl] = text_pred_dl if raw.key? :TextPredDL
        hash[:text_za_dl] = text_za_dl if raw.key? :TextZaDL
        hash[:date_upom1] = date_upom1 if raw.key? :DateUpom1
        hash[:date_upom2] = date_upom2 if raw.key? :DateUpom2
        hash[:date_upom_l] = date_upom_l if raw.key? :DateUpomL
        hash[:valuty_prop] = valuty_prop if raw.key? :ValutyProp
        hash[:sum_zaloha] = sum_zaloha if raw.key? :SumZaloha
        hash[:sum_zaloha_c] = sum_zaloha_c if raw.key? :SumZalohaC
        hash[:typ_transakce] = typ_transakce if raw.key? :TypTransakce
        hash[:dodaci_podm] = dodaci_podm if raw.key? :DodaciPodm
        hash[:druh_dopravy] = druh_dopravy if raw.key? :DruhDopravy
        hash[:st_odesl_urc] = st_odesl_urc if raw.key? :StOdeslUrc
        hash[:doprav_tuz] = doprav_tuz if raw.key? :DopravTuz
        hash[:doprav_zahr] = doprav_zahr if raw.key? :DopravZahr
        hash[:datum_its] = datum_its if raw.key? :DatumITS
        hash[:sleva] = sleva if raw.key? :Sleva
        hash[:vyridit_nej] = vyridit_nej if raw.key? :VyriditNej
        hash[:vyridit_do] = vyridit_do if raw.key? :Vyridit_do
        hash[:vyrizeno] = vyrizeno if raw.key? :Vyrizeno
        hash[:i_doklad_id] = i_doklad_id if raw.key? :iDokladID
        hash[:i_dokl_agend] = i_dokl_agend if raw.key? :iDoklAgend
        hash[:pojisteno] = pojisteno if raw.key? :Pojisteno
        hash[:celkem] = celkem if raw.key? :Celkem
        hash[:valuty] = valuty.to_h if raw.key? :Valuty
        hash[:dod_odb] = dod_odb.to_h if raw.key? :DodOdb
        hash[:konec_prij] = konec_prij.to_h if raw.key? :KonecPrij
        hash[:import] = import.to_h if raw.key? :Import
        hash[:eshop] = eshop.to_h if raw.key? :eshop
        hash[:prepravce] = prepravce.to_h if raw.key? :Prepravce
        hash[:typ_zasillky] = typ_zasillky.to_h if raw.key? :TypZasillky
        hash[:prepr_vyplatne] = prepr_vyplatne.to_h if raw.key? :Prepr_Vyplatne
        hash[:prepr_uhrada_dobirky] = prepr_uhrada_dobirky.to_h if raw.key? :Prepr_UhradaDobirky
        hash[:prepr_trida] = prepr_trida.to_h if raw.key? :Prepr_Trida
        hash[:moje_firma] = moje_firma.to_h if raw.key? :MojeFirma
        hash[:vlajky] = vlajky.to_h if raw.key? :Vlajky
        hash[:souhrn_dph] = souhrn_dph.to_h if raw.key? :SouhrnDPH
        hash[:prepr_seznam_sluzeb] = prepr_seznam_sluzeb.map(&:to_h) if raw.key? :Prepr_SeznamSluzeb
        hash[:seznam_polozek] = seznam_polozek.map(&:to_h) if raw.key? :SeznamPolozek
        hash[:seznam_zal_polozek] = seznam_zal_polozek.map(&:to_h) if raw.key? :SeznamZalPolozek
        hash[:seznam_uhrad] = seznam_uhrad.map(&:to_h) if raw.key? :SeznamUhrad
        hash[:seznam_nep_plateb] = seznam_nep_plateb.map(&:to_h) if raw.key? :SeznamNepPlateb
        hash[:seznam_vazeb] = seznam_vazeb.map(&:to_h) if raw.key? :SeznamVazeb
        hash[:dokumenty] = dokumenty if raw.key? :Dokumenty

        hash
      end
    end
  end
end