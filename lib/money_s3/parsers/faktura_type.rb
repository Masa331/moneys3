module MoneyS3
  module Parsers
    class FakturaType
      include ParserCore::BaseParser

      def doklad
        at 'Doklad'
      end

      def doklad_attributes
        attributes_at 'Doklad'
      end

      def ev_cis_dokl
        at 'EvCisDokl'
      end

      def ev_cis_dokl_attributes
        attributes_at 'EvCisDokl'
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def zpusob_uctovani_attributes
        attributes_at 'ZpusobUctovani'
      end

      def storno
        at 'Storno'
      end

      def storno_attributes
        attributes_at 'Storno'
      end

      def del
        at 'Del'
      end

      def del_attributes
        attributes_at 'Del'
      end

      def guid
        at 'GUID'
      end

      def guid_attributes
        attributes_at 'GUID'
      end

      def rada
        at 'Rada'
      end

      def rada_attributes
        attributes_at 'Rada'
      end

      def cis_rada
        at 'CisRada'
      end

      def cis_rada_attributes
        attributes_at 'CisRada'
      end

      def u_doklad
        at 'UDoklad'
      end

      def u_doklad_attributes
        attributes_at 'UDoklad'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def vystaveno
        at 'Vystaveno'
      end

      def vystaveno_attributes
        attributes_at 'Vystaveno'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def dat_uc_pr_attributes
        attributes_at 'DatUcPr'
      end

      def plneno_dph
        at 'PlnenoDPH'
      end

      def plneno_dph_attributes
        attributes_at 'PlnenoDPH'
      end

      def splatno
        at 'Splatno'
      end

      def splatno_attributes
        attributes_at 'Splatno'
      end

      def uhrazeno
        at 'Uhrazeno'
      end

      def uhrazeno_attributes
        attributes_at 'Uhrazeno'
      end

      def doruceno
        at 'Doruceno'
      end

      def doruceno_attributes
        attributes_at 'Doruceno'
      end

      def dat_sk_poh
        at 'DatSkPoh'
      end

      def dat_sk_poh_attributes
        attributes_at 'DatSkPoh'
      end

      def dobr_duzp
        at 'DobrDUZP'
      end

      def dobr_duzp_attributes
        attributes_at 'DobrDUZP'
      end

      def konst_sym
        at 'KonstSym'
      end

      def konst_sym_attributes
        attributes_at 'KonstSym'
      end

      def kod_dph
        at 'KodDPH'
      end

      def kod_dph_attributes
        attributes_at 'KodDPH'
      end

      def ucel_zd_pl
        at 'UcelZdPl'
      end

      def ucel_zd_pl_attributes
        attributes_at 'UcelZdPl'
      end

      def plnen_dph
        at 'PlnenDPH'
      end

      def plnen_dph_attributes
        attributes_at 'PlnenDPH'
      end

      def zjedn_d
        at 'ZjednD'
      end

      def zjedn_d_attributes
        attributes_at 'ZjednD'
      end

      def var_symbol
        at 'VarSymbol'
      end

      def var_symbol_attributes
        attributes_at 'VarSymbol'
      end

      def spec_symbol
        at 'SpecSymbol'
      end

      def spec_symbol_attributes
        attributes_at 'SpecSymbol'
      end

      def prijat_dokl
        at 'PrijatDokl'
      end

      def prijat_dokl_attributes
        attributes_at 'PrijatDokl'
      end

      def par_symbol
        at 'ParSymbol'
      end

      def par_symbol_attributes
        attributes_at 'ParSymbol'
      end

      def puv_doklad
        at 'PuvDoklad'
      end

      def puv_doklad_attributes
        attributes_at 'PuvDoklad'
      end

      def zakazka
        at 'Zakazka'
      end

      def zakazka_attributes
        attributes_at 'Zakazka'
      end

      def c_objednavk
        at 'CObjednavk'
      end

      def c_objednavk_attributes
        attributes_at 'CObjednavk'
      end

      def ucet
        at 'Ucet'
      end

      def ucet_attributes
        attributes_at 'Ucet'
      end

      def druh
        at 'Druh'
      end

      def druh_attributes
        attributes_at 'Druh'
      end

      def dobropis
        at 'Dobropis'
      end

      def dobropis_attributes
        attributes_at 'Dobropis'
      end

      def zp_dopravy
        at 'ZpDopravy'
      end

      def zp_dopravy_attributes
        attributes_at 'ZpDopravy'
      end

      def uhrada
        at 'Uhrada'
      end

      def uhrada_attributes
        attributes_at 'Uhrada'
      end

      def pred_kontac
        at 'PredKontac'
      end

      def pred_kontac_attributes
        attributes_at 'PredKontac'
      end

      def cinnost
        at 'Cinnost'
      end

      def cinnost_attributes
        attributes_at 'Cinnost'
      end

      def stat_moss
        at 'StatMOSS'
      end

      def stat_moss_attributes
        attributes_at 'StatMOSS'
      end

      def zp_vyp_dph
        at 'ZpVypDPH'
      end

      def zp_vyp_dph_attributes
        attributes_at 'ZpVypDPH'
      end

      def sazba_dph1
        at 'SazbaDPH1'
      end

      def sazba_dph1_attributes
        attributes_at 'SazbaDPH1'
      end

      def sazba_dph2
        at 'SazbaDPH2'
      end

      def sazba_dph2_attributes
        attributes_at 'SazbaDPH2'
      end

      def proplatit
        at 'Proplatit'
      end

      def proplatit_attributes
        attributes_at 'Proplatit'
      end

      def vyuctovano
        at 'Vyuctovano'
      end

      def vyuctovano_attributes
        attributes_at 'Vyuctovano'
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, 'SouhrnDPH')
      end

      def celkem
        at 'Celkem'
      end

      def celkem_attributes
        attributes_at 'Celkem'
      end

      def valuty
        submodel_at(Valuty2, 'Valuty')
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def vystavil
        at 'Vystavil'
      end

      def vystavil_attributes
        attributes_at 'Vystavil'
      end

      def prik_uhrady
        at 'PrikUhrady'
      end

      def prik_uhrady_attributes
        attributes_at 'PrikUhrady'
      end

      def pri_uhr_zbyv
        at 'PriUhrZbyv'
      end

      def pri_uhr_zbyv_attributes
        attributes_at 'PriUhrZbyv'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def stredisko
        at 'Stredisko'
      end

      def stredisko_attributes
        attributes_at 'Stredisko'
      end

      def date_upom1
        at 'DateUpom1'
      end

      def date_upom1_attributes
        attributes_at 'DateUpom1'
      end

      def date_upom2
        at 'DateUpom2'
      end

      def date_upom2_attributes
        attributes_at 'DateUpom2'
      end

      def date_upom_l
        at 'DateUpomL'
      end

      def date_upom_l_attributes
        attributes_at 'DateUpomL'
      end

      def text_pred_fa
        at 'TextPredFa'
      end

      def text_pred_fa_attributes
        attributes_at 'TextPredFa'
      end

      def text_za_fa
        at 'TextZaFa'
      end

      def text_za_fa_attributes
        attributes_at 'TextZaFa'
      end

      def text_pred_dl
        at 'TextPredDL'
      end

      def text_pred_dl_attributes
        attributes_at 'TextPredDL'
      end

      def text_za_dl
        at 'TextZaDL'
      end

      def text_za_dl_attributes
        attributes_at 'TextZaDL'
      end

      def valuty_prop
        at 'ValutyProp'
      end

      def valuty_prop_attributes
        attributes_at 'ValutyProp'
      end

      def sum_zaloha
        at 'SumZaloha'
      end

      def sum_zaloha_attributes
        attributes_at 'SumZaloha'
      end

      def sum_zaloha_c
        at 'SumZalohaC'
      end

      def sum_zaloha_c_attributes
        attributes_at 'SumZalohaC'
      end

      def dod_odb
        submodel_at(DokladFirmaType, 'DodOdb')
      end

      def konec_prij
        submodel_at(KonecPrijFirmaType, 'KonecPrij')
      end

      def typ_transakce
        at 'TypTransakce'
      end

      def typ_transakce_attributes
        attributes_at 'TypTransakce'
      end

      def dodaci_podm
        at 'DodaciPodm'
      end

      def dodaci_podm_attributes
        attributes_at 'DodaciPodm'
      end

      def druh_dopravy
        at 'DruhDopravy'
      end

      def druh_dopravy_attributes
        attributes_at 'DruhDopravy'
      end

      def st_odesl_urc
        at 'StOdeslUrc'
      end

      def st_odesl_urc_attributes
        attributes_at 'StOdeslUrc'
      end

      def doprav_tuz
        at 'DopravTuz'
      end

      def doprav_tuz_attributes
        attributes_at 'DopravTuz'
      end

      def doprav_zahr
        at 'DopravZahr'
      end

      def doprav_zahr_attributes
        attributes_at 'DopravZahr'
      end

      def datum_its
        at 'DatumITS'
      end

      def datum_its_attributes
        attributes_at 'DatumITS'
      end

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def vyridit_nej
        at 'VyriditNej'
      end

      def vyridit_nej_attributes
        attributes_at 'VyriditNej'
      end

      def vyridit_do
        at 'Vyridit_do'
      end

      def vyridit_do_attributes
        attributes_at 'Vyridit_do'
      end

      def vyrizeno
        at 'Vyrizeno'
      end

      def vyrizeno_attributes
        attributes_at 'Vyrizeno'
      end

      def i_doklad_id
        at 'iDokladID'
      end

      def i_doklad_id_attributes
        attributes_at 'iDokladID'
      end

      def i_dokl_agend
        at 'iDoklAgend'
      end

      def i_dokl_agend_attributes
        attributes_at 'iDoklAgend'
      end

      def import
        submodel_at(Import, 'Import')
      end

      def eshop
        submodel_at(Eshop, 'eshop')
      end

      def pojisteno
        at 'Pojisteno'
      end

      def pojisteno_attributes
        attributes_at 'Pojisteno'
      end

      def prepravce
        submodel_at(PrepravceType, 'Prepravce')
      end

      def typ_zasillky
        submodel_at(TypZasilkyType, 'TypZasillky')
      end

      def prepr_vyplatne
        submodel_at(PreprDoplnUdajType, 'Prepr_Vyplatne')
      end

      def prepr_uhrada_dobirky
        submodel_at(PreprDoplnUdajType, 'Prepr_UhradaDobirky')
      end

      def prepr_trida
        submodel_at(PreprDoplnUdajType, 'Prepr_Trida')
      end

      def prepr_seznam_sluzeb
        array_of_at(PreprDoplnUdajType, ['Prepr_SeznamSluzeb', 'Prepr_Sluzba'])
      end

      def seznam_polozek
        array_of_at(PolFakturyType, ['SeznamPolozek', 'Polozka'])
      end

      def seznam_zal_polozek
        array_of_at(PolObjednType, ['SeznamZalPolozek', 'Polozka'])
      end

      def seznam_uhrad
        array_of_at(UhradaType, ['SeznamUhrad', 'Uhrada'])
      end

      def moje_firma
        submodel_at(MojeFirmaType, 'MojeFirma')
      end

      def seznam_nep_plateb
        array_of_at(NepPlatbaType, ['SeznamNepPlateb', 'NepPlatba'])
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def seznam_vazeb
        array_of_at(VazbaType, ['SeznamVazeb', 'Vazba'])
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def uzivatelska_pole
        at 'UzivatelskaPole'
      end

      def uzivatelska_pole_attributes
        attributes_at 'UzivatelskaPole'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:doklad] = doklad if has? 'Doklad'
        hash[:doklad_attributes] = doklad_attributes if has? 'Doklad'
        hash[:ev_cis_dokl] = ev_cis_dokl if has? 'EvCisDokl'
        hash[:ev_cis_dokl_attributes] = ev_cis_dokl_attributes if has? 'EvCisDokl'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:zpusob_uctovani_attributes] = zpusob_uctovani_attributes if has? 'ZpusobUctovani'
        hash[:storno] = storno if has? 'Storno'
        hash[:storno_attributes] = storno_attributes if has? 'Storno'
        hash[:del] = del if has? 'Del'
        hash[:del_attributes] = del_attributes if has? 'Del'
        hash[:guid] = guid if has? 'GUID'
        hash[:guid_attributes] = guid_attributes if has? 'GUID'
        hash[:rada] = rada if has? 'Rada'
        hash[:rada_attributes] = rada_attributes if has? 'Rada'
        hash[:cis_rada] = cis_rada if has? 'CisRada'
        hash[:cis_rada_attributes] = cis_rada_attributes if has? 'CisRada'
        hash[:u_doklad] = u_doklad if has? 'UDoklad'
        hash[:u_doklad_attributes] = u_doklad_attributes if has? 'UDoklad'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:vystaveno] = vystaveno if has? 'Vystaveno'
        hash[:vystaveno_attributes] = vystaveno_attributes if has? 'Vystaveno'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:dat_uc_pr_attributes] = dat_uc_pr_attributes if has? 'DatUcPr'
        hash[:plneno_dph] = plneno_dph if has? 'PlnenoDPH'
        hash[:plneno_dph_attributes] = plneno_dph_attributes if has? 'PlnenoDPH'
        hash[:splatno] = splatno if has? 'Splatno'
        hash[:splatno_attributes] = splatno_attributes if has? 'Splatno'
        hash[:uhrazeno] = uhrazeno if has? 'Uhrazeno'
        hash[:uhrazeno_attributes] = uhrazeno_attributes if has? 'Uhrazeno'
        hash[:doruceno] = doruceno if has? 'Doruceno'
        hash[:doruceno_attributes] = doruceno_attributes if has? 'Doruceno'
        hash[:dat_sk_poh] = dat_sk_poh if has? 'DatSkPoh'
        hash[:dat_sk_poh_attributes] = dat_sk_poh_attributes if has? 'DatSkPoh'
        hash[:dobr_duzp] = dobr_duzp if has? 'DobrDUZP'
        hash[:dobr_duzp_attributes] = dobr_duzp_attributes if has? 'DobrDUZP'
        hash[:konst_sym] = konst_sym if has? 'KonstSym'
        hash[:konst_sym_attributes] = konst_sym_attributes if has? 'KonstSym'
        hash[:kod_dph] = kod_dph if has? 'KodDPH'
        hash[:kod_dph_attributes] = kod_dph_attributes if has? 'KodDPH'
        hash[:ucel_zd_pl] = ucel_zd_pl if has? 'UcelZdPl'
        hash[:ucel_zd_pl_attributes] = ucel_zd_pl_attributes if has? 'UcelZdPl'
        hash[:plnen_dph] = plnen_dph if has? 'PlnenDPH'
        hash[:plnen_dph_attributes] = plnen_dph_attributes if has? 'PlnenDPH'
        hash[:zjedn_d] = zjedn_d if has? 'ZjednD'
        hash[:zjedn_d_attributes] = zjedn_d_attributes if has? 'ZjednD'
        hash[:var_symbol] = var_symbol if has? 'VarSymbol'
        hash[:var_symbol_attributes] = var_symbol_attributes if has? 'VarSymbol'
        hash[:spec_symbol] = spec_symbol if has? 'SpecSymbol'
        hash[:spec_symbol_attributes] = spec_symbol_attributes if has? 'SpecSymbol'
        hash[:prijat_dokl] = prijat_dokl if has? 'PrijatDokl'
        hash[:prijat_dokl_attributes] = prijat_dokl_attributes if has? 'PrijatDokl'
        hash[:par_symbol] = par_symbol if has? 'ParSymbol'
        hash[:par_symbol_attributes] = par_symbol_attributes if has? 'ParSymbol'
        hash[:puv_doklad] = puv_doklad if has? 'PuvDoklad'
        hash[:puv_doklad_attributes] = puv_doklad_attributes if has? 'PuvDoklad'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:c_objednavk] = c_objednavk if has? 'CObjednavk'
        hash[:c_objednavk_attributes] = c_objednavk_attributes if has? 'CObjednavk'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:ucet_attributes] = ucet_attributes if has? 'Ucet'
        hash[:druh] = druh if has? 'Druh'
        hash[:druh_attributes] = druh_attributes if has? 'Druh'
        hash[:dobropis] = dobropis if has? 'Dobropis'
        hash[:dobropis_attributes] = dobropis_attributes if has? 'Dobropis'
        hash[:zp_dopravy] = zp_dopravy if has? 'ZpDopravy'
        hash[:zp_dopravy_attributes] = zp_dopravy_attributes if has? 'ZpDopravy'
        hash[:uhrada] = uhrada if has? 'Uhrada'
        hash[:uhrada_attributes] = uhrada_attributes if has? 'Uhrada'
        hash[:pred_kontac] = pred_kontac if has? 'PredKontac'
        hash[:pred_kontac_attributes] = pred_kontac_attributes if has? 'PredKontac'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:stat_moss_attributes] = stat_moss_attributes if has? 'StatMOSS'
        hash[:zp_vyp_dph] = zp_vyp_dph if has? 'ZpVypDPH'
        hash[:zp_vyp_dph_attributes] = zp_vyp_dph_attributes if has? 'ZpVypDPH'
        hash[:sazba_dph1] = sazba_dph1 if has? 'SazbaDPH1'
        hash[:sazba_dph1_attributes] = sazba_dph1_attributes if has? 'SazbaDPH1'
        hash[:sazba_dph2] = sazba_dph2 if has? 'SazbaDPH2'
        hash[:sazba_dph2_attributes] = sazba_dph2_attributes if has? 'SazbaDPH2'
        hash[:proplatit] = proplatit if has? 'Proplatit'
        hash[:proplatit_attributes] = proplatit_attributes if has? 'Proplatit'
        hash[:vyuctovano] = vyuctovano if has? 'Vyuctovano'
        hash[:vyuctovano_attributes] = vyuctovano_attributes if has? 'Vyuctovano'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:celkem_attributes] = celkem_attributes if has? 'Celkem'
        hash[:valuty] = valuty.to_h if has? 'Valuty'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:vystavil] = vystavil if has? 'Vystavil'
        hash[:vystavil_attributes] = vystavil_attributes if has? 'Vystavil'
        hash[:prik_uhrady] = prik_uhrady if has? 'PrikUhrady'
        hash[:prik_uhrady_attributes] = prik_uhrady_attributes if has? 'PrikUhrady'
        hash[:pri_uhr_zbyv] = pri_uhr_zbyv if has? 'PriUhrZbyv'
        hash[:pri_uhr_zbyv_attributes] = pri_uhr_zbyv_attributes if has? 'PriUhrZbyv'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:date_upom1] = date_upom1 if has? 'DateUpom1'
        hash[:date_upom1_attributes] = date_upom1_attributes if has? 'DateUpom1'
        hash[:date_upom2] = date_upom2 if has? 'DateUpom2'
        hash[:date_upom2_attributes] = date_upom2_attributes if has? 'DateUpom2'
        hash[:date_upom_l] = date_upom_l if has? 'DateUpomL'
        hash[:date_upom_l_attributes] = date_upom_l_attributes if has? 'DateUpomL'
        hash[:text_pred_fa] = text_pred_fa if has? 'TextPredFa'
        hash[:text_pred_fa_attributes] = text_pred_fa_attributes if has? 'TextPredFa'
        hash[:text_za_fa] = text_za_fa if has? 'TextZaFa'
        hash[:text_za_fa_attributes] = text_za_fa_attributes if has? 'TextZaFa'
        hash[:text_pred_dl] = text_pred_dl if has? 'TextPredDL'
        hash[:text_pred_dl_attributes] = text_pred_dl_attributes if has? 'TextPredDL'
        hash[:text_za_dl] = text_za_dl if has? 'TextZaDL'
        hash[:text_za_dl_attributes] = text_za_dl_attributes if has? 'TextZaDL'
        hash[:valuty_prop] = valuty_prop if has? 'ValutyProp'
        hash[:valuty_prop_attributes] = valuty_prop_attributes if has? 'ValutyProp'
        hash[:sum_zaloha] = sum_zaloha if has? 'SumZaloha'
        hash[:sum_zaloha_attributes] = sum_zaloha_attributes if has? 'SumZaloha'
        hash[:sum_zaloha_c] = sum_zaloha_c if has? 'SumZalohaC'
        hash[:sum_zaloha_c_attributes] = sum_zaloha_c_attributes if has? 'SumZalohaC'
        hash[:dod_odb] = dod_odb.to_h if has? 'DodOdb'
        hash[:konec_prij] = konec_prij.to_h if has? 'KonecPrij'
        hash[:typ_transakce] = typ_transakce if has? 'TypTransakce'
        hash[:typ_transakce_attributes] = typ_transakce_attributes if has? 'TypTransakce'
        hash[:dodaci_podm] = dodaci_podm if has? 'DodaciPodm'
        hash[:dodaci_podm_attributes] = dodaci_podm_attributes if has? 'DodaciPodm'
        hash[:druh_dopravy] = druh_dopravy if has? 'DruhDopravy'
        hash[:druh_dopravy_attributes] = druh_dopravy_attributes if has? 'DruhDopravy'
        hash[:st_odesl_urc] = st_odesl_urc if has? 'StOdeslUrc'
        hash[:st_odesl_urc_attributes] = st_odesl_urc_attributes if has? 'StOdeslUrc'
        hash[:doprav_tuz] = doprav_tuz if has? 'DopravTuz'
        hash[:doprav_tuz_attributes] = doprav_tuz_attributes if has? 'DopravTuz'
        hash[:doprav_zahr] = doprav_zahr if has? 'DopravZahr'
        hash[:doprav_zahr_attributes] = doprav_zahr_attributes if has? 'DopravZahr'
        hash[:datum_its] = datum_its if has? 'DatumITS'
        hash[:datum_its_attributes] = datum_its_attributes if has? 'DatumITS'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'
        hash[:vyridit_nej] = vyridit_nej if has? 'VyriditNej'
        hash[:vyridit_nej_attributes] = vyridit_nej_attributes if has? 'VyriditNej'
        hash[:vyridit_do] = vyridit_do if has? 'Vyridit_do'
        hash[:vyridit_do_attributes] = vyridit_do_attributes if has? 'Vyridit_do'
        hash[:vyrizeno] = vyrizeno if has? 'Vyrizeno'
        hash[:vyrizeno_attributes] = vyrizeno_attributes if has? 'Vyrizeno'
        hash[:i_doklad_id] = i_doklad_id if has? 'iDokladID'
        hash[:i_doklad_id_attributes] = i_doklad_id_attributes if has? 'iDokladID'
        hash[:i_dokl_agend] = i_dokl_agend if has? 'iDoklAgend'
        hash[:i_dokl_agend_attributes] = i_dokl_agend_attributes if has? 'iDoklAgend'
        hash[:import] = import.to_h if has? 'Import'
        hash[:eshop] = eshop.to_h if has? 'eshop'
        hash[:pojisteno] = pojisteno if has? 'Pojisteno'
        hash[:pojisteno_attributes] = pojisteno_attributes if has? 'Pojisteno'
        hash[:prepravce] = prepravce.to_h if has? 'Prepravce'
        hash[:typ_zasillky] = typ_zasillky.to_h if has? 'TypZasillky'
        hash[:prepr_vyplatne] = prepr_vyplatne.to_h if has? 'Prepr_Vyplatne'
        hash[:prepr_uhrada_dobirky] = prepr_uhrada_dobirky.to_h if has? 'Prepr_UhradaDobirky'
        hash[:prepr_trida] = prepr_trida.to_h if has? 'Prepr_Trida'
        hash[:prepr_seznam_sluzeb] = prepr_seznam_sluzeb.map(&:to_h) if has? 'Prepr_SeznamSluzeb'
        hash[:seznam_polozek] = seznam_polozek.map(&:to_h) if has? 'SeznamPolozek'
        hash[:seznam_zal_polozek] = seznam_zal_polozek.map(&:to_h) if has? 'SeznamZalPolozek'
        hash[:seznam_uhrad] = seznam_uhrad.map(&:to_h) if has? 'SeznamUhrad'
        hash[:moje_firma] = moje_firma.to_h if has? 'MojeFirma'
        hash[:seznam_nep_plateb] = seznam_nep_plateb.map(&:to_h) if has? 'SeznamNepPlateb'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:seznam_vazeb] = seznam_vazeb.map(&:to_h) if has? 'SeznamVazeb'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'
        hash[:uzivatelska_pole] = uzivatelska_pole if has? 'UzivatelskaPole'
        hash[:uzivatelska_pole_attributes] = uzivatelska_pole_attributes if has? 'UzivatelskaPole'

        hash
      end
    end
  end
end