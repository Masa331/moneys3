require 'money_s3/base_element'
require 'money_s3/valuty'
require 'money_s3/doklad_firma_type'
require 'money_s3/konec_prij_firma_type'
require 'money_s3/import'
require 'money_s3/eshop'
require 'money_s3/prepravce_type'
require 'money_s3/typ_zasilky_type'
require 'money_s3/prepr_dopln_udaj_type'
require 'money_s3/moje_firma_type'
require 'money_s3/vlajky'
require 'money_s3/souhrn_dph_type'
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
      { doklad: doklad,
        ev_cis_dokl: ev_cis_dokl,
        zpusob_uctovani: zpusob_uctovani,
        guid: guid,
        rada: rada,
        cis_rada: cis_rada,
        u_doklad: u_doklad,
        popis: popis,
        vystaveno: vystaveno,
        dat_uc_pr: dat_uc_pr,
        plneno_dph: plneno_dph,
        splatno: splatno,
        uhrazeno: uhrazeno,
        doruceno: doruceno,
        dat_sk_poh: dat_sk_poh,
        konst_sym: konst_sym,
        kod_dph: kod_dph,
        ucel_zd_pl: ucel_zd_pl,
        plnen_dph: plnen_dph,
        zjedn_d: zjedn_d,
        var_symbol: var_symbol,
        spec_symbol: spec_symbol,
        prijat_dokl: prijat_dokl,
        par_symbol: par_symbol,
        puv_doklad: puv_doklad,
        zakazka: zakazka,
        c_objednavk: c_objednavk,
        ucet: ucet,
        druh: druh,
        dobropis: dobropis,
        dobr_duzp: dobr_duzp,
        zp_dopravy: zp_dopravy,
        uhrada: uhrada,
        pred_kontac: pred_kontac,
        cinnost: cinnost,
        stat_moss: stat_moss,
        zp_vyp_dph: zp_vyp_dph,
        proplatit: proplatit,
        vyuctovano: vyuctovano,
        sazba_dph1: sazba_dph1,
        sazba_dph2: sazba_dph2,
        typ: typ,
        vystavil: vystavil,
        prik_uhrady: prik_uhrady,
        pri_uhr_zbyv: pri_uhr_zbyv,
        poznamka: poznamka,
        stredisko: stredisko,
        text_pred_fa: text_pred_fa,
        text_za_fa: text_za_fa,
        text_pred_dl: text_pred_dl,
        text_za_dl: text_za_dl,
        date_upom1: date_upom1,
        date_upom2: date_upom2,
        date_upom_l: date_upom_l,
        valuty_prop: valuty_prop,
        sum_zaloha: sum_zaloha,
        sum_zaloha_c: sum_zaloha_c,
        typ_transakce: typ_transakce,
        dodaci_podm: dodaci_podm,
        druh_dopravy: druh_dopravy,
        st_odesl_urc: st_odesl_urc,
        doprav_tuz: doprav_tuz,
        doprav_zahr: doprav_zahr,
        datum_its: datum_its,
        sleva: sleva,
        vyridit_nej: vyridit_nej,
        vyridit_do: vyridit_do,
        vyrizeno: vyrizeno,
        i_doklad_id: i_doklad_id,
        i_dokl_agend: i_dokl_agend,
        pojisteno: pojisteno,
        celkem: celkem,
        valuty: valuty.to_h,
        dod_odb: dod_odb.to_h,
        konec_prij: konec_prij.to_h,
        import: import.to_h,
        eshop: eshop.to_h,
        prepravce: prepravce.to_h,
        typ_zasillky: typ_zasillky.to_h,
        prepr_vyplatne: prepr_vyplatne.to_h,
        prepr_uhrada_dobirky: prepr_uhrada_dobirky.to_h,
        prepr_trida: prepr_trida.to_h,
        moje_firma: moje_firma.to_h,
        vlajky: vlajky.to_h,
        souhrn_dph: souhrn_dph.to_h,
        prepr_seznam_sluzeb: prepr_seznam_sluzeb.map(&:to_h),
        seznam_polozek: seznam_polozek.map(&:to_h),
        seznam_zal_polozek: seznam_zal_polozek.map(&:to_h),
        seznam_uhrad: seznam_uhrad.map(&:to_h),
        seznam_nep_plateb: seznam_nep_plateb.map(&:to_h),
        seznam_vazeb: seznam_vazeb.map(&:to_h),
        dokumenty: dokumenty
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
