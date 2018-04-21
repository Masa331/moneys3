module MoneyS3
  module Parsers
    class PolObjednType
      include BaseParser

      def popis
        at 'Popis'
      end

      def poznamka
        at 'Poznamka'
      end

      def pocet_mj
        at 'PocetMJ'
      end

      def zbyva_mj
        at 'ZbyvaMJ'
      end

      def cena
        at 'Cena'
      end

      def souhrn_dph
        submodel_at(SouhrnDPHPolType, 'SouhrnDPH')
      end

      def sazba_dph
        at 'SazbaDPH'
      end

      def typ_ceny
        at 'TypCeny'
      end

      def sleva
        at 'Sleva'
      end

      def vystaveno
        at 'Vystaveno'
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

      def poradi
        at 'Poradi'
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

      def cenova_hlad
        at 'CenovaHlad'
      end

      def valuty
        at 'Valuty'
      end

      def kod_statu_puv
        at 'KodStatuPuv'
      end

      def typ_transakce
        at 'TypTransakce'
      end

      def hmotnost
        at 'Hmotnost'
      end

      def cena_po_sleve
        at 'CenaPoSleve'
      end

      def zvl_rezim
        at 'ZvlRezim'
      end

      def zvl_dph
        at 'ZvlDPH'
      end

      def rezim_eet
        at 'RezimEET'
      end

      def pred_pc
        at 'PredPC'
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def neskl_polozka
        submodel_at(NesklPolozka2, 'NesklPolozka')
      end

      def seznam_vc
        array_of_at(VyrobniCisloType, ['SeznamVC', 'VyrobniCislo'])
      end

      def slozeni
        array_of_at(SubPolObjType, ['Slozeni', 'SubPolozka'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:popis] = popis if has? 'Popis'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:zbyva_mj] = zbyva_mj if has? 'ZbyvaMJ'
        hash[:cena] = cena if has? 'Cena'
        hash[:souhrn_dph] = souhrn_dph.to_h_with_attrs if has? 'SouhrnDPH'
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'
        hash[:typ_ceny] = typ_ceny if has? 'TypCeny'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:vystaveno] = vystaveno if has? 'Vystaveno'
        hash[:vyridit_nej] = vyridit_nej if has? 'VyriditNej'
        hash[:vyridit_do] = vyridit_do if has? 'Vyridit_do'
        hash[:vyrizeno] = vyrizeno if has? 'Vyrizeno'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cenova_hlad] = cenova_hlad if has? 'CenovaHlad'
        hash[:valuty] = valuty if has? 'Valuty'
        hash[:kod_statu_puv] = kod_statu_puv if has? 'KodStatuPuv'
        hash[:typ_transakce] = typ_transakce if has? 'TypTransakce'
        hash[:hmotnost] = hmotnost if has? 'Hmotnost'
        hash[:cena_po_sleve] = cena_po_sleve if has? 'CenaPoSleve'
        hash[:zvl_rezim] = zvl_rezim if has? 'ZvlRezim'
        hash[:zvl_dph] = zvl_dph if has? 'ZvlDPH'
        hash[:rezim_eet] = rezim_eet if has? 'RezimEET'
        hash[:pred_pc] = pred_pc if has? 'PredPC'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'
        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'
        hash[:neskl_polozka] = neskl_polozka.to_h_with_attrs if has? 'NesklPolozka'
        hash[:seznam_vc] = seznam_vc.map(&:to_h_with_attrs) if has? 'SeznamVC'
        hash[:slozeni] = slozeni.map(&:to_h_with_attrs) if has? 'Slozeni'

        hash
      end
    end
  end
end