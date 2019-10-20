module MoneyS3
  module Parsers
    class PolObjednType
      include ParserCore::BaseParser

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

      def pocet_mj
        at 'PocetMJ'
      end

      def pocet_mj_attributes
        attributes_at 'PocetMJ'
      end

      def zbyva_mj
        at 'ZbyvaMJ'
      end

      def zbyva_mj_attributes
        attributes_at 'ZbyvaMJ'
      end

      def cena
        at 'Cena'
      end

      def cena_attributes
        attributes_at 'Cena'
      end

      def souhrn_dph
        submodel_at(SouhrnDPHPolType, 'SouhrnDPH')
      end

      def sazba_dph
        at 'SazbaDPH'
      end

      def sazba_dph_attributes
        attributes_at 'SazbaDPH'
      end

      def typ_ceny
        at 'TypCeny'
      end

      def typ_ceny_attributes
        attributes_at 'TypCeny'
      end

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def vystaveno
        at 'Vystaveno'
      end

      def vystaveno_attributes
        attributes_at 'Vystaveno'
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

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
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

      def cenova_hlad
        at 'CenovaHlad'
      end

      def cenova_hlad_attributes
        attributes_at 'CenovaHlad'
      end

      def valuty
        at 'Valuty'
      end

      def valuty_attributes
        attributes_at 'Valuty'
      end

      def kod_statu_puv
        at 'KodStatuPuv'
      end

      def kod_statu_puv_attributes
        attributes_at 'KodStatuPuv'
      end

      def typ_transakce
        at 'TypTransakce'
      end

      def typ_transakce_attributes
        attributes_at 'TypTransakce'
      end

      def hmotnost
        at 'Hmotnost'
      end

      def hmotnost_attributes
        attributes_at 'Hmotnost'
      end

      def zvl_rezim
        at 'ZvlRezim'
      end

      def zvl_rezim_attributes
        attributes_at 'ZvlRezim'
      end

      def zvl_dph
        at 'ZvlDPH'
      end

      def zvl_dph_attributes
        attributes_at 'ZvlDPH'
      end

      def rezim_eet
        at 'RezimEET'
      end

      def rezim_eet_attributes
        attributes_at 'RezimEET'
      end

      def pred_pc
        at 'PredPC'
      end

      def pred_pc_attributes
        attributes_at 'PredPC'
      end

      def predm_pln
        at 'PredmPln'
      end

      def predm_pln_attributes
        attributes_at 'PredmPln'
      end

      def cena_po_sleve
        at 'CenaPoSleve'
      end

      def cena_po_sleve_attributes
        attributes_at 'CenaPoSleve'
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def seznam_vc
        array_of_at(VyrobniCisloType, ['SeznamVC', 'VyrobniCislo'])
      end

      def slozeni
        array_of_at(SubPolObjType, ['Slozeni', 'SubPolozka'])
      end

      def neskl_polozka
        submodel_at(NesklPolozka2, 'NesklPolozka')
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

        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:pocet_mj_attributes] = pocet_mj_attributes if has? 'PocetMJ'
        hash[:zbyva_mj] = zbyva_mj if has? 'ZbyvaMJ'
        hash[:zbyva_mj_attributes] = zbyva_mj_attributes if has? 'ZbyvaMJ'
        hash[:cena] = cena if has? 'Cena'
        hash[:cena_attributes] = cena_attributes if has? 'Cena'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'
        hash[:sazba_dph_attributes] = sazba_dph_attributes if has? 'SazbaDPH'
        hash[:typ_ceny] = typ_ceny if has? 'TypCeny'
        hash[:typ_ceny_attributes] = typ_ceny_attributes if has? 'TypCeny'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'
        hash[:vystaveno] = vystaveno if has? 'Vystaveno'
        hash[:vystaveno_attributes] = vystaveno_attributes if has? 'Vystaveno'
        hash[:vyridit_nej] = vyridit_nej if has? 'VyriditNej'
        hash[:vyridit_nej_attributes] = vyridit_nej_attributes if has? 'VyriditNej'
        hash[:vyridit_do] = vyridit_do if has? 'Vyridit_do'
        hash[:vyridit_do_attributes] = vyridit_do_attributes if has? 'Vyridit_do'
        hash[:vyrizeno] = vyrizeno if has? 'Vyrizeno'
        hash[:vyrizeno_attributes] = vyrizeno_attributes if has? 'Vyrizeno'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:cenova_hlad] = cenova_hlad if has? 'CenovaHlad'
        hash[:cenova_hlad_attributes] = cenova_hlad_attributes if has? 'CenovaHlad'
        hash[:valuty] = valuty if has? 'Valuty'
        hash[:valuty_attributes] = valuty_attributes if has? 'Valuty'
        hash[:kod_statu_puv] = kod_statu_puv if has? 'KodStatuPuv'
        hash[:kod_statu_puv_attributes] = kod_statu_puv_attributes if has? 'KodStatuPuv'
        hash[:typ_transakce] = typ_transakce if has? 'TypTransakce'
        hash[:typ_transakce_attributes] = typ_transakce_attributes if has? 'TypTransakce'
        hash[:hmotnost] = hmotnost if has? 'Hmotnost'
        hash[:hmotnost_attributes] = hmotnost_attributes if has? 'Hmotnost'
        hash[:zvl_rezim] = zvl_rezim if has? 'ZvlRezim'
        hash[:zvl_rezim_attributes] = zvl_rezim_attributes if has? 'ZvlRezim'
        hash[:zvl_dph] = zvl_dph if has? 'ZvlDPH'
        hash[:zvl_dph_attributes] = zvl_dph_attributes if has? 'ZvlDPH'
        hash[:rezim_eet] = rezim_eet if has? 'RezimEET'
        hash[:rezim_eet_attributes] = rezim_eet_attributes if has? 'RezimEET'
        hash[:pred_pc] = pred_pc if has? 'PredPC'
        hash[:pred_pc_attributes] = pred_pc_attributes if has? 'PredPC'
        hash[:predm_pln] = predm_pln if has? 'PredmPln'
        hash[:predm_pln_attributes] = predm_pln_attributes if has? 'PredmPln'
        hash[:cena_po_sleve] = cena_po_sleve if has? 'CenaPoSleve'
        hash[:cena_po_sleve_attributes] = cena_po_sleve_attributes if has? 'CenaPoSleve'
        hash[:sklad] = sklad.to_h if has? 'Sklad'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:seznam_vc] = seznam_vc.map(&:to_h) if has? 'SeznamVC'
        hash[:slozeni] = slozeni.map(&:to_h) if has? 'Slozeni'
        hash[:neskl_polozka] = neskl_polozka.to_h if has? 'NesklPolozka'
        hash[:uzivatelska_pole] = uzivatelska_pole if has? 'UzivatelskaPole'
        hash[:uzivatelska_pole_attributes] = uzivatelska_pole_attributes if has? 'UzivatelskaPole'

        hash
      end
    end
  end
end