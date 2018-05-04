module MoneyS3
  module Parsers
    class SklDoklType
      include BaseParser

      def cislo_dokla
        at 'CisloDokla'
      end

      def eet
        submodel_at(EETType, 'EET')
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def c_objednavk
        at 'CObjednavk'
      end

      def kp_from_odb
        at 'KPFromOdb'
      end

      def datum
        at 'Datum'
      end

      def sleva
        at 'Sleva'
      end

      def d_rada
        at 'DRada'
      end

      def stredisko
        at 'Stredisko'
      end

      def zakazka
        at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def popis
        at 'Popis'
      end

      def vystavil
        at 'Vystavil'
      end

      def vyriz_faktu
        at 'VyrizFaktu'
      end

      def text_pred_po
        at 'TextPredPo'
      end

      def text_za_pol
        at 'TextZaPol'
      end

      def nadpis
        at 'Nadpis'
      end

      def zkrat_typu_d
        at 'ZkratTypuD'
      end

      def poriz_cena
        at 'PorizCena'
      end

      def popis_x
        at 'PopisX'
      end

      def fiskal
        at 'Fiskal'
      end

      def fis_doklad
        at 'FisDoklad'
      end

      def dat_sk_poh
        at 'DatSkPoh'
      end

      def stat_moss
        at 'StatMOSS'
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

      def prim_doklad
        at 'PrimDoklad'
      end

      def var_symbol
        at 'VarSymbol'
      end

      def par_symbol
        at 'ParSymbol'
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

      def i_doklad_id
        at 'iDokladID'
      end

      def i_dokl_agend
        at 'iDoklAgend'
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

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:cislo_dokla] = cislo_dokla if has? 'CisloDokla'
        hash[:eet] = eet.to_h_with_attrs if has? 'EET'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:c_objednavk] = c_objednavk if has? 'CObjednavk'
        hash[:kp_from_odb] = kp_from_odb if has? 'KPFromOdb'
        hash[:datum] = datum if has? 'Datum'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:popis] = popis if has? 'Popis'
        hash[:vystavil] = vystavil if has? 'Vystavil'
        hash[:vyriz_faktu] = vyriz_faktu if has? 'VyrizFaktu'
        hash[:text_pred_po] = text_pred_po if has? 'TextPredPo'
        hash[:text_za_pol] = text_za_pol if has? 'TextZaPol'
        hash[:nadpis] = nadpis if has? 'Nadpis'
        hash[:zkrat_typu_d] = zkrat_typu_d if has? 'ZkratTypuD'
        hash[:poriz_cena] = poriz_cena if has? 'PorizCena'
        hash[:popis_x] = popis_x if has? 'PopisX'
        hash[:fiskal] = fiskal if has? 'Fiskal'
        hash[:fis_doklad] = fis_doklad if has? 'FisDoklad'
        hash[:dat_sk_poh] = dat_sk_poh if has? 'DatSkPoh'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:sazba_dph1] = sazba_dph1 if has? 'SazbaDPH1'
        hash[:sazba_dph2] = sazba_dph2 if has? 'SazbaDPH2'
        hash[:souhrn_dph] = souhrn_dph.to_h_with_attrs if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:valuty] = valuty.to_h_with_attrs if has? 'Valuty'
        hash[:prim_doklad] = prim_doklad if has? 'PrimDoklad'
        hash[:var_symbol] = var_symbol if has? 'VarSymbol'
        hash[:par_symbol] = par_symbol if has? 'ParSymbol'
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
        hash[:i_doklad_id] = i_doklad_id if has? 'iDokladID'
        hash[:i_dokl_agend] = i_dokl_agend if has? 'iDoklAgend'
        hash[:import] = import.to_h_with_attrs if has? 'Import'
        hash[:sklad_pro_pr] = sklad_pro_pr.to_h_with_attrs if has? 'SkladProPr'
        hash[:polozka] = polozka.map(&:to_h_with_attrs) if has? 'Polozka'
        hash[:moje_firma] = moje_firma.to_h_with_attrs if has? 'MojeFirma'
        hash[:seznam_nep_plateb] = seznam_nep_plateb.map(&:to_h_with_attrs) if has? 'SeznamNepPlateb'
        hash[:vlajky] = vlajky.to_h_with_attrs if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end