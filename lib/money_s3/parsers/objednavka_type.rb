module MoneyS3
  module Parsers
    class ObjednavkaType
      include ParserCore::BaseParser

      def doklad
        at 'Doklad'
      end

      def doklad_attributes
        attributes_at 'Doklad'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
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

      def vystaveno
        at 'Vystaveno'
      end

      def vystaveno_attributes
        attributes_at 'Vystaveno'
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

      def dod_odb
        submodel_at(DokladFirmaType, 'DodOdb')
      end

      def konec_prij
        submodel_at(KonecPrijFirmaType, 'KonecPrij')
      end

      def kp_from_odb
        at 'KPFromOdb'
      end

      def kp_from_odb_attributes
        attributes_at 'KPFromOdb'
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

      def d_rada
        at 'DRada'
      end

      def d_rada_attributes
        attributes_at 'DRada'
      end

      def d_cislo
        at 'DCislo'
      end

      def d_cislo_attributes
        attributes_at 'DCislo'
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

      def vystavil
        at 'Vystavil'
      end

      def vystavil_attributes
        attributes_at 'Vystavil'
      end

      def ne_rezervov
        at 'NeRezervov'
      end

      def ne_rezervov_attributes
        attributes_at 'NeRezervov'
      end

      def pevne_ceny
        at 'PevneCeny'
      end

      def pevne_ceny_attributes
        attributes_at 'PevneCeny'
      end

      def plat_podm
        at 'PlatPodm'
      end

      def plat_podm_attributes
        attributes_at 'PlatPodm'
      end

      def doprava
        at 'Doprava'
      end

      def doprava_attributes
        attributes_at 'Doprava'
      end

      def cas_vystave
        at 'CasVystave'
      end

      def cas_vystave_attributes
        attributes_at 'CasVystave'
      end

      def datum_vysta
        at 'DatumVysta'
      end

      def datum_vysta_attributes
        attributes_at 'DatumVysta'
      end

      def nadpis
        at 'Nadpis'
      end

      def nadpis_attributes
        attributes_at 'Nadpis'
      end

      def vyridit_nej
        at 'VyriditNej'
      end

      def vyridit_nej_attributes
        attributes_at 'VyriditNej'
      end

      def zkratka_typ
        at 'ZkratkaTyp'
      end

      def zkratka_typ_attributes
        attributes_at 'ZkratkaTyp'
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

      def ne_vyrizova
        at 'NeVyrizova'
      end

      def ne_vyrizova_attributes
        attributes_at 'NeVyrizova'
      end

      def siz_dec_dph
        at 'SizDecDPH'
      end

      def siz_dec_dph_attributes
        attributes_at 'SizDecDPH'
      end

      def siz_dec_celk
        at 'SizDecCelk'
      end

      def siz_dec_celk_attributes
        attributes_at 'SizDecCelk'
      end

      def zobr_pozn_vy
        at 'ZobrPoznVy'
      end

      def zobr_pozn_vy_attributes
        attributes_at 'ZobrPoznVy'
      end

      def stat_moss
        at 'StatMOSS'
      end

      def stat_moss_attributes
        attributes_at 'StatMOSS'
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

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def eshop
        submodel_at(Eshop3, 'eshop')
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

      def polozka
        array_of_at(PolObjednType, ['Polozka'])
      end

      def moje_firma
        submodel_at(MojeFirmaType, 'MojeFirma')
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:doklad] = doklad if has? 'Doklad'
        hash[:doklad_attributes] = doklad_attributes if has? 'Doklad'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:text_pred_po] = text_pred_po if has? 'TextPredPo'
        hash[:text_pred_po_attributes] = text_pred_po_attributes if has? 'TextPredPo'
        hash[:text_za_pol] = text_za_pol if has? 'TextZaPol'
        hash[:text_za_pol_attributes] = text_za_pol_attributes if has? 'TextZaPol'
        hash[:vystaveno] = vystaveno if has? 'Vystaveno'
        hash[:vystaveno_attributes] = vystaveno_attributes if has? 'Vystaveno'
        hash[:vyridit_do] = vyridit_do if has? 'Vyridit_do'
        hash[:vyridit_do_attributes] = vyridit_do_attributes if has? 'Vyridit_do'
        hash[:vyrizeno] = vyrizeno if has? 'Vyrizeno'
        hash[:vyrizeno_attributes] = vyrizeno_attributes if has? 'Vyrizeno'
        hash[:dod_odb] = dod_odb.to_h if has? 'DodOdb'
        hash[:konec_prij] = konec_prij.to_h if has? 'KonecPrij'
        hash[:kp_from_odb] = kp_from_odb if has? 'KPFromOdb'
        hash[:kp_from_odb_attributes] = kp_from_odb_attributes if has? 'KPFromOdb'
        hash[:sazba_dph1] = sazba_dph1 if has? 'SazbaDPH1'
        hash[:sazba_dph1_attributes] = sazba_dph1_attributes if has? 'SazbaDPH1'
        hash[:sazba_dph2] = sazba_dph2 if has? 'SazbaDPH2'
        hash[:sazba_dph2_attributes] = sazba_dph2_attributes if has? 'SazbaDPH2'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:celkem_attributes] = celkem_attributes if has? 'Celkem'
        hash[:valuty] = valuty.to_h if has? 'Valuty'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:d_rada_attributes] = d_rada_attributes if has? 'DRada'
        hash[:d_cislo] = d_cislo if has? 'DCislo'
        hash[:d_cislo_attributes] = d_cislo_attributes if has? 'DCislo'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:vystavil] = vystavil if has? 'Vystavil'
        hash[:vystavil_attributes] = vystavil_attributes if has? 'Vystavil'
        hash[:ne_rezervov] = ne_rezervov if has? 'NeRezervov'
        hash[:ne_rezervov_attributes] = ne_rezervov_attributes if has? 'NeRezervov'
        hash[:pevne_ceny] = pevne_ceny if has? 'PevneCeny'
        hash[:pevne_ceny_attributes] = pevne_ceny_attributes if has? 'PevneCeny'
        hash[:plat_podm] = plat_podm if has? 'PlatPodm'
        hash[:plat_podm_attributes] = plat_podm_attributes if has? 'PlatPodm'
        hash[:doprava] = doprava if has? 'Doprava'
        hash[:doprava_attributes] = doprava_attributes if has? 'Doprava'
        hash[:cas_vystave] = cas_vystave if has? 'CasVystave'
        hash[:cas_vystave_attributes] = cas_vystave_attributes if has? 'CasVystave'
        hash[:datum_vysta] = datum_vysta if has? 'DatumVysta'
        hash[:datum_vysta_attributes] = datum_vysta_attributes if has? 'DatumVysta'
        hash[:nadpis] = nadpis if has? 'Nadpis'
        hash[:nadpis_attributes] = nadpis_attributes if has? 'Nadpis'
        hash[:vyridit_nej] = vyridit_nej if has? 'VyriditNej'
        hash[:vyridit_nej_attributes] = vyridit_nej_attributes if has? 'VyriditNej'
        hash[:zkratka_typ] = zkratka_typ if has? 'ZkratkaTyp'
        hash[:zkratka_typ_attributes] = zkratka_typ_attributes if has? 'ZkratkaTyp'
        hash[:prim_doklad] = prim_doklad if has? 'PrimDoklad'
        hash[:prim_doklad_attributes] = prim_doklad_attributes if has? 'PrimDoklad'
        hash[:var_symbol] = var_symbol if has? 'VarSymbol'
        hash[:var_symbol_attributes] = var_symbol_attributes if has? 'VarSymbol'
        hash[:ne_vyrizova] = ne_vyrizova if has? 'NeVyrizova'
        hash[:ne_vyrizova_attributes] = ne_vyrizova_attributes if has? 'NeVyrizova'
        hash[:siz_dec_dph] = siz_dec_dph if has? 'SizDecDPH'
        hash[:siz_dec_dph_attributes] = siz_dec_dph_attributes if has? 'SizDecDPH'
        hash[:siz_dec_celk] = siz_dec_celk if has? 'SizDecCelk'
        hash[:siz_dec_celk_attributes] = siz_dec_celk_attributes if has? 'SizDecCelk'
        hash[:zobr_pozn_vy] = zobr_pozn_vy if has? 'ZobrPoznVy'
        hash[:zobr_pozn_vy_attributes] = zobr_pozn_vy_attributes if has? 'ZobrPoznVy'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:stat_moss_attributes] = stat_moss_attributes if has? 'StatMOSS'
        hash[:typ_transakce] = typ_transakce if has? 'TypTransakce'
        hash[:typ_transakce_attributes] = typ_transakce_attributes if has? 'TypTransakce'
        hash[:dodaci_podm] = dodaci_podm if has? 'DodaciPodm'
        hash[:dodaci_podm_attributes] = dodaci_podm_attributes if has? 'DodaciPodm'
        hash[:druh_dopravy] = druh_dopravy if has? 'DruhDopravy'
        hash[:druh_dopravy_attributes] = druh_dopravy_attributes if has? 'DruhDopravy'
        hash[:st_odesl_urc] = st_odesl_urc if has? 'StOdeslUrc'
        hash[:st_odesl_urc_attributes] = st_odesl_urc_attributes if has? 'StOdeslUrc'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'
        hash[:eshop] = eshop.to_h if has? 'eshop'
        hash[:pojisteno] = pojisteno if has? 'Pojisteno'
        hash[:pojisteno_attributes] = pojisteno_attributes if has? 'Pojisteno'
        hash[:prepravce] = prepravce.to_h if has? 'Prepravce'
        hash[:typ_zasillky] = typ_zasillky.to_h if has? 'TypZasillky'
        hash[:prepr_vyplatne] = prepr_vyplatne.to_h if has? 'Prepr_Vyplatne'
        hash[:prepr_uhrada_dobirky] = prepr_uhrada_dobirky.to_h if has? 'Prepr_UhradaDobirky'
        hash[:prepr_trida] = prepr_trida.to_h if has? 'Prepr_Trida'
        hash[:prepr_seznam_sluzeb] = prepr_seznam_sluzeb.map(&:to_h) if has? 'Prepr_SeznamSluzeb'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'
        hash[:moje_firma] = moje_firma.to_h if has? 'MojeFirma'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end