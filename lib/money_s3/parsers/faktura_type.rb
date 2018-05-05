module MoneyS3
  module Parsers
    class FakturaType
      include ParserCore::BaseParser

      def doklad
        at 'Doklad'
      end

      def ev_cis_dokl
        at 'EvCisDokl'
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def guid
        at 'GUID'
      end

      def rada
        at 'Rada'
      end

      def cis_rada
        at 'CisRada'
      end

      def u_doklad
        at 'UDoklad'
      end

      def popis
        at 'Popis'
      end

      def vystaveno
        at 'Vystaveno'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def plneno_dph
        at 'PlnenoDPH'
      end

      def splatno
        at 'Splatno'
      end

      def uhrazeno
        at 'Uhrazeno'
      end

      def doruceno
        at 'Doruceno'
      end

      def dat_sk_poh
        at 'DatSkPoh'
      end

      def konst_sym
        at 'KonstSym'
      end

      def kod_dph
        at 'KodDPH'
      end

      def ucel_zd_pl
        at 'UcelZdPl'
      end

      def plnen_dph
        at 'PlnenDPH'
      end

      def zjedn_d
        at 'ZjednD'
      end

      def var_symbol
        at 'VarSymbol'
      end

      def spec_symbol
        at 'SpecSymbol'
      end

      def prijat_dokl
        at 'PrijatDokl'
      end

      def par_symbol
        at 'ParSymbol'
      end

      def puv_doklad
        at 'PuvDoklad'
      end

      def zakazka
        at 'Zakazka'
      end

      def c_objednavk
        at 'CObjednavk'
      end

      def ucet
        at 'Ucet'
      end

      def druh
        at 'Druh'
      end

      def dobropis
        at 'Dobropis'
      end

      def dobr_duzp
        at 'DobrDUZP'
      end

      def zp_dopravy
        at 'ZpDopravy'
      end

      def uhrada
        at 'Uhrada'
      end

      def pred_kontac
        at 'PredKontac'
      end

      def cinnost
        at 'Cinnost'
      end

      def stat_moss
        at 'StatMOSS'
      end

      def zp_vyp_dph
        at 'ZpVypDPH'
      end

      def proplatit
        at 'Proplatit'
      end

      def vyuctovano
        at 'Vyuctovano'
      end

      def sazba_dph1
        at 'SazbaDPH1'
      end

      def sazba_dph2
        at 'SazbaDPH2'
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, 'SouhrnDPH')
      end

      def celkem
        at 'Celkem'
      end

      def valuty
        submodel_at(Valuty2, 'Valuty')
      end

      def typ
        at 'Typ'
      end

      def vystavil
        at 'Vystavil'
      end

      def prik_uhrady
        at 'PrikUhrady'
      end

      def pri_uhr_zbyv
        at 'PriUhrZbyv'
      end

      def poznamka
        at 'Poznamka'
      end

      def stredisko
        at 'Stredisko'
      end

      def text_pred_fa
        at 'TextPredFa'
      end

      def text_za_fa
        at 'TextZaFa'
      end

      def text_pred_dl
        at 'TextPredDL'
      end

      def text_za_dl
        at 'TextZaDL'
      end

      def date_upom1
        at 'DateUpom1'
      end

      def date_upom2
        at 'DateUpom2'
      end

      def date_upom_l
        at 'DateUpomL'
      end

      def valuty_prop
        at 'ValutyProp'
      end

      def sum_zaloha
        at 'SumZaloha'
      end

      def sum_zaloha_c
        at 'SumZalohaC'
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

      def dodaci_podm
        at 'DodaciPodm'
      end

      def druh_dopravy
        at 'DruhDopravy'
      end

      def st_odesl_urc
        at 'StOdeslUrc'
      end

      def doprav_tuz
        at 'DopravTuz'
      end

      def doprav_zahr
        at 'DopravZahr'
      end

      def datum_its
        at 'DatumITS'
      end

      def sleva
        at 'Sleva'
      end

      def vyridit_nej
        at 'VyriditNej'
      end

      def vyridit_do
        at 'Vyridit_do'
      end

      def vyrizeno
        at 'Vyrizeno'
      end

      def i_doklad_id
        at 'iDokladID'
      end

      def i_dokl_agend
        at 'iDoklAgend'
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

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:doklad] = doklad if has? 'Doklad'
        hash[:ev_cis_dokl] = ev_cis_dokl if has? 'EvCisDokl'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:guid] = guid if has? 'GUID'
        hash[:rada] = rada if has? 'Rada'
        hash[:cis_rada] = cis_rada if has? 'CisRada'
        hash[:u_doklad] = u_doklad if has? 'UDoklad'
        hash[:popis] = popis if has? 'Popis'
        hash[:vystaveno] = vystaveno if has? 'Vystaveno'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:plneno_dph] = plneno_dph if has? 'PlnenoDPH'
        hash[:splatno] = splatno if has? 'Splatno'
        hash[:uhrazeno] = uhrazeno if has? 'Uhrazeno'
        hash[:doruceno] = doruceno if has? 'Doruceno'
        hash[:dat_sk_poh] = dat_sk_poh if has? 'DatSkPoh'
        hash[:konst_sym] = konst_sym if has? 'KonstSym'
        hash[:kod_dph] = kod_dph if has? 'KodDPH'
        hash[:ucel_zd_pl] = ucel_zd_pl if has? 'UcelZdPl'
        hash[:plnen_dph] = plnen_dph if has? 'PlnenDPH'
        hash[:zjedn_d] = zjedn_d if has? 'ZjednD'
        hash[:var_symbol] = var_symbol if has? 'VarSymbol'
        hash[:spec_symbol] = spec_symbol if has? 'SpecSymbol'
        hash[:prijat_dokl] = prijat_dokl if has? 'PrijatDokl'
        hash[:par_symbol] = par_symbol if has? 'ParSymbol'
        hash[:puv_doklad] = puv_doklad if has? 'PuvDoklad'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:c_objednavk] = c_objednavk if has? 'CObjednavk'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:druh] = druh if has? 'Druh'
        hash[:dobropis] = dobropis if has? 'Dobropis'
        hash[:dobr_duzp] = dobr_duzp if has? 'DobrDUZP'
        hash[:zp_dopravy] = zp_dopravy if has? 'ZpDopravy'
        hash[:uhrada] = uhrada if has? 'Uhrada'
        hash[:pred_kontac] = pred_kontac if has? 'PredKontac'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:zp_vyp_dph] = zp_vyp_dph if has? 'ZpVypDPH'
        hash[:proplatit] = proplatit if has? 'Proplatit'
        hash[:vyuctovano] = vyuctovano if has? 'Vyuctovano'
        hash[:sazba_dph1] = sazba_dph1 if has? 'SazbaDPH1'
        hash[:sazba_dph2] = sazba_dph2 if has? 'SazbaDPH2'
        hash[:souhrn_dph] = souhrn_dph.to_h_with_attrs if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:valuty] = valuty.to_h_with_attrs if has? 'Valuty'
        hash[:typ] = typ if has? 'Typ'
        hash[:vystavil] = vystavil if has? 'Vystavil'
        hash[:prik_uhrady] = prik_uhrady if has? 'PrikUhrady'
        hash[:pri_uhr_zbyv] = pri_uhr_zbyv if has? 'PriUhrZbyv'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:text_pred_fa] = text_pred_fa if has? 'TextPredFa'
        hash[:text_za_fa] = text_za_fa if has? 'TextZaFa'
        hash[:text_pred_dl] = text_pred_dl if has? 'TextPredDL'
        hash[:text_za_dl] = text_za_dl if has? 'TextZaDL'
        hash[:date_upom1] = date_upom1 if has? 'DateUpom1'
        hash[:date_upom2] = date_upom2 if has? 'DateUpom2'
        hash[:date_upom_l] = date_upom_l if has? 'DateUpomL'
        hash[:valuty_prop] = valuty_prop if has? 'ValutyProp'
        hash[:sum_zaloha] = sum_zaloha if has? 'SumZaloha'
        hash[:sum_zaloha_c] = sum_zaloha_c if has? 'SumZalohaC'
        hash[:dod_odb] = dod_odb.to_h_with_attrs if has? 'DodOdb'
        hash[:konec_prij] = konec_prij.to_h_with_attrs if has? 'KonecPrij'
        hash[:typ_transakce] = typ_transakce if has? 'TypTransakce'
        hash[:dodaci_podm] = dodaci_podm if has? 'DodaciPodm'
        hash[:druh_dopravy] = druh_dopravy if has? 'DruhDopravy'
        hash[:st_odesl_urc] = st_odesl_urc if has? 'StOdeslUrc'
        hash[:doprav_tuz] = doprav_tuz if has? 'DopravTuz'
        hash[:doprav_zahr] = doprav_zahr if has? 'DopravZahr'
        hash[:datum_its] = datum_its if has? 'DatumITS'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:vyridit_nej] = vyridit_nej if has? 'VyriditNej'
        hash[:vyridit_do] = vyridit_do if has? 'Vyridit_do'
        hash[:vyrizeno] = vyrizeno if has? 'Vyrizeno'
        hash[:i_doklad_id] = i_doklad_id if has? 'iDokladID'
        hash[:i_dokl_agend] = i_dokl_agend if has? 'iDoklAgend'
        hash[:import] = import.to_h_with_attrs if has? 'Import'
        hash[:eshop] = eshop.to_h_with_attrs if has? 'eshop'
        hash[:pojisteno] = pojisteno if has? 'Pojisteno'
        hash[:prepravce] = prepravce.to_h_with_attrs if has? 'Prepravce'
        hash[:typ_zasillky] = typ_zasillky.to_h_with_attrs if has? 'TypZasillky'
        hash[:prepr_vyplatne] = prepr_vyplatne.to_h_with_attrs if has? 'Prepr_Vyplatne'
        hash[:prepr_uhrada_dobirky] = prepr_uhrada_dobirky.to_h_with_attrs if has? 'Prepr_UhradaDobirky'
        hash[:prepr_trida] = prepr_trida.to_h_with_attrs if has? 'Prepr_Trida'
        hash[:prepr_seznam_sluzeb] = prepr_seznam_sluzeb.map(&:to_h_with_attrs) if has? 'Prepr_SeznamSluzeb'
        hash[:seznam_polozek] = seznam_polozek.map(&:to_h_with_attrs) if has? 'SeznamPolozek'
        hash[:seznam_zal_polozek] = seznam_zal_polozek.map(&:to_h_with_attrs) if has? 'SeznamZalPolozek'
        hash[:seznam_uhrad] = seznam_uhrad.map(&:to_h_with_attrs) if has? 'SeznamUhrad'
        hash[:moje_firma] = moje_firma.to_h_with_attrs if has? 'MojeFirma'
        hash[:seznam_nep_plateb] = seznam_nep_plateb.map(&:to_h_with_attrs) if has? 'SeznamNepPlateb'
        hash[:vlajky] = vlajky.to_h_with_attrs if has? 'Vlajky'
        hash[:seznam_vazeb] = seznam_vazeb.map(&:to_h_with_attrs) if has? 'SeznamVazeb'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end