module MoneyS3
  module Parsers
    class SklDoklType
      include ParserCore::BaseParser

      def cislo_dokla
        at 'CisloDokla'
      end

      def cislo_dokla_attributes
        attributes_at 'CisloDokla'
      end

      def eet
        submodel_at(EETType, 'EET')
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def zpusob_uctovani_attributes
        attributes_at 'ZpusobUctovani'
      end

      def c_objednavk
        at 'CObjednavk'
      end

      def c_objednavk_attributes
        attributes_at 'CObjednavk'
      end

      def kp_from_odb
        at 'KPFromOdb'
      end

      def kp_from_odb_attributes
        attributes_at 'KPFromOdb'
      end

      def datum
        at 'Datum'
      end

      def datum_attributes
        attributes_at 'Datum'
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

      def d_rada
        at 'DRada'
      end

      def d_rada_attributes
        attributes_at 'DRada'
      end

      def stredisko
        at 'Stredisko'
      end

      def stredisko_attributes
        attributes_at 'Stredisko'
      end

      def zakazka
        at 'Zakazka'
      end

      def zakazka_attributes
        attributes_at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def cinnost_attributes
        attributes_at 'Cinnost'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def vystavil
        at 'Vystavil'
      end

      def vystavil_attributes
        attributes_at 'Vystavil'
      end

      def vyriz_faktu
        at 'VyrizFaktu'
      end

      def vyriz_faktu_attributes
        attributes_at 'VyrizFaktu'
      end

      def text_pred_po
        at 'TextPredPo'
      end

      def text_pred_po_attributes
        attributes_at 'TextPredPo'
      end

      def text_za_pol
        at 'TextZaPol'
      end

      def text_za_pol_attributes
        attributes_at 'TextZaPol'
      end

      def nadpis
        at 'Nadpis'
      end

      def nadpis_attributes
        attributes_at 'Nadpis'
      end

      def zkrat_typu_d
        at 'ZkratTypuD'
      end

      def zkrat_typu_d_attributes
        attributes_at 'ZkratTypuD'
      end

      def poriz_cena
        at 'PorizCena'
      end

      def poriz_cena_attributes
        attributes_at 'PorizCena'
      end

      def popis_x
        at 'PopisX'
      end

      def popis_x_attributes
        attributes_at 'PopisX'
      end

      def fiskal
        at 'Fiskal'
      end

      def fiskal_attributes
        attributes_at 'Fiskal'
      end

      def fis_doklad
        at 'FisDoklad'
      end

      def fis_doklad_attributes
        attributes_at 'FisDoklad'
      end

      def dat_sk_poh
        at 'DatSkPoh'
      end

      def dat_sk_poh_attributes
        attributes_at 'DatSkPoh'
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

      def prim_doklad
        at 'PrimDoklad'
      end

      def prim_doklad_attributes
        attributes_at 'PrimDoklad'
      end

      def var_symbol
        at 'VarSymbol'
      end

      def var_symbol_attributes
        attributes_at 'VarSymbol'
      end

      def par_symbol
        at 'ParSymbol'
      end

      def par_symbol_attributes
        attributes_at 'ParSymbol'
      end

      def dod_odb
        submodel_at(SkDokladFirmaType, 'DodOdb')
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

      def valuty
        submodel_at(Valuty2, 'Valuty')
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
        submodel_at(Import2, 'Import')
      end

      def sklad_pro_pr
        submodel_at(SkladType, 'SkladProPr')
      end

      def polozka
        array_of_at(PolSklDoklType, ['Polozka'])
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

        hash[:cislo_dokla] = cislo_dokla if has? 'CisloDokla'
        hash[:cislo_dokla_attributes] = cislo_dokla_attributes if has? 'CisloDokla'
        hash[:eet] = eet.to_h if has? 'EET'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:zpusob_uctovani_attributes] = zpusob_uctovani_attributes if has? 'ZpusobUctovani'
        hash[:c_objednavk] = c_objednavk if has? 'CObjednavk'
        hash[:c_objednavk_attributes] = c_objednavk_attributes if has? 'CObjednavk'
        hash[:kp_from_odb] = kp_from_odb if has? 'KPFromOdb'
        hash[:kp_from_odb_attributes] = kp_from_odb_attributes if has? 'KPFromOdb'
        hash[:datum] = datum if has? 'Datum'
        hash[:datum_attributes] = datum_attributes if has? 'Datum'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:celkem_attributes] = celkem_attributes if has? 'Celkem'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:d_rada_attributes] = d_rada_attributes if has? 'DRada'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:vystavil] = vystavil if has? 'Vystavil'
        hash[:vystavil_attributes] = vystavil_attributes if has? 'Vystavil'
        hash[:vyriz_faktu] = vyriz_faktu if has? 'VyrizFaktu'
        hash[:vyriz_faktu_attributes] = vyriz_faktu_attributes if has? 'VyrizFaktu'
        hash[:text_pred_po] = text_pred_po if has? 'TextPredPo'
        hash[:text_pred_po_attributes] = text_pred_po_attributes if has? 'TextPredPo'
        hash[:text_za_pol] = text_za_pol if has? 'TextZaPol'
        hash[:text_za_pol_attributes] = text_za_pol_attributes if has? 'TextZaPol'
        hash[:nadpis] = nadpis if has? 'Nadpis'
        hash[:nadpis_attributes] = nadpis_attributes if has? 'Nadpis'
        hash[:zkrat_typu_d] = zkrat_typu_d if has? 'ZkratTypuD'
        hash[:zkrat_typu_d_attributes] = zkrat_typu_d_attributes if has? 'ZkratTypuD'
        hash[:poriz_cena] = poriz_cena if has? 'PorizCena'
        hash[:poriz_cena_attributes] = poriz_cena_attributes if has? 'PorizCena'
        hash[:popis_x] = popis_x if has? 'PopisX'
        hash[:popis_x_attributes] = popis_x_attributes if has? 'PopisX'
        hash[:fiskal] = fiskal if has? 'Fiskal'
        hash[:fiskal_attributes] = fiskal_attributes if has? 'Fiskal'
        hash[:fis_doklad] = fis_doklad if has? 'FisDoklad'
        hash[:fis_doklad_attributes] = fis_doklad_attributes if has? 'FisDoklad'
        hash[:dat_sk_poh] = dat_sk_poh if has? 'DatSkPoh'
        hash[:dat_sk_poh_attributes] = dat_sk_poh_attributes if has? 'DatSkPoh'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:stat_moss_attributes] = stat_moss_attributes if has? 'StatMOSS'
        hash[:zp_vyp_dph] = zp_vyp_dph if has? 'ZpVypDPH'
        hash[:zp_vyp_dph_attributes] = zp_vyp_dph_attributes if has? 'ZpVypDPH'
        hash[:sazba_dph1] = sazba_dph1 if has? 'SazbaDPH1'
        hash[:sazba_dph1_attributes] = sazba_dph1_attributes if has? 'SazbaDPH1'
        hash[:sazba_dph2] = sazba_dph2 if has? 'SazbaDPH2'
        hash[:sazba_dph2_attributes] = sazba_dph2_attributes if has? 'SazbaDPH2'
        hash[:prim_doklad] = prim_doklad if has? 'PrimDoklad'
        hash[:prim_doklad_attributes] = prim_doklad_attributes if has? 'PrimDoklad'
        hash[:var_symbol] = var_symbol if has? 'VarSymbol'
        hash[:var_symbol_attributes] = var_symbol_attributes if has? 'VarSymbol'
        hash[:par_symbol] = par_symbol if has? 'ParSymbol'
        hash[:par_symbol_attributes] = par_symbol_attributes if has? 'ParSymbol'
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
        hash[:valuty] = valuty.to_h if has? 'Valuty'
        hash[:i_doklad_id] = i_doklad_id if has? 'iDokladID'
        hash[:i_doklad_id_attributes] = i_doklad_id_attributes if has? 'iDokladID'
        hash[:i_dokl_agend] = i_dokl_agend if has? 'iDoklAgend'
        hash[:i_dokl_agend_attributes] = i_dokl_agend_attributes if has? 'iDoklAgend'
        hash[:import] = import.to_h if has? 'Import'
        hash[:sklad_pro_pr] = sklad_pro_pr.to_h if has? 'SkladProPr'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'
        hash[:moje_firma] = moje_firma.to_h if has? 'MojeFirma'
        hash[:seznam_nep_plateb] = seznam_nep_plateb.map(&:to_h) if has? 'SeznamNepPlateb'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'
        hash[:uzivatelska_pole] = uzivatelska_pole if has? 'UzivatelskaPole'
        hash[:uzivatelska_pole_attributes] = uzivatelska_pole_attributes if has? 'UzivatelskaPole'

        hash
      end
    end
  end
end