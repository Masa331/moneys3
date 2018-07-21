module MoneyS3
  module Parsers
    class PolFakturyType
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

      def sazba_dph
        at 'SazbaDPH'
      end

      def sazba_dph_attributes
        attributes_at 'SazbaDPH'
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

      def cena_typ
        at 'CenaTyp'
      end

      def cena_typ_attributes
        attributes_at 'CenaTyp'
      end

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def cinnost
        at 'Cinnost'
      end

      def cinnost_attributes
        attributes_at 'Cinnost'
      end

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
      end

      def kod_dph
        at 'KodDPH'
      end

      def kod_dph_attributes
        attributes_at 'KodDPH'
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

      def predkontac
        at 'Predkontac'
      end

      def predkontac_attributes
        attributes_at 'Predkontac'
      end

      def valuty
        at 'Valuty'
      end

      def valuty_attributes
        attributes_at 'Valuty'
      end

      def neskl_polozka
        submodel_at(NesklPolozka, 'NesklPolozka')
      end

      def cena_po_sleve
        at 'CenaPoSleve'
      end

      def cena_po_sleve_attributes
        attributes_at 'CenaPoSleve'
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

      def skl_polozka
        submodel_at(PolSklDoklType, 'SklPolozka')
      end

      def seznam_vazeb
        submodel_at(SeznamVazeb, 'SeznamVazeb')
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
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'
        hash[:sazba_dph_attributes] = sazba_dph_attributes if has? 'SazbaDPH'
        hash[:cena] = cena if has? 'Cena'
        hash[:cena_attributes] = cena_attributes if has? 'Cena'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:cena_typ] = cena_typ if has? 'CenaTyp'
        hash[:cena_typ_attributes] = cena_typ_attributes if has? 'CenaTyp'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:kod_dph] = kod_dph if has? 'KodDPH'
        hash[:kod_dph_attributes] = kod_dph_attributes if has? 'KodDPH'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:predkontac] = predkontac if has? 'Predkontac'
        hash[:predkontac_attributes] = predkontac_attributes if has? 'Predkontac'
        hash[:valuty] = valuty if has? 'Valuty'
        hash[:valuty_attributes] = valuty_attributes if has? 'Valuty'
        hash[:neskl_polozka] = neskl_polozka.to_h if has? 'NesklPolozka'
        hash[:cena_po_sleve] = cena_po_sleve if has? 'CenaPoSleve'
        hash[:cena_po_sleve_attributes] = cena_po_sleve_attributes if has? 'CenaPoSleve'
        hash[:zvl_rezim] = zvl_rezim if has? 'ZvlRezim'
        hash[:zvl_rezim_attributes] = zvl_rezim_attributes if has? 'ZvlRezim'
        hash[:zvl_dph] = zvl_dph if has? 'ZvlDPH'
        hash[:zvl_dph_attributes] = zvl_dph_attributes if has? 'ZvlDPH'
        hash[:rezim_eet] = rezim_eet if has? 'RezimEET'
        hash[:rezim_eet_attributes] = rezim_eet_attributes if has? 'RezimEET'
        hash[:skl_polozka] = skl_polozka.to_h if has? 'SklPolozka'
        hash[:seznam_vazeb] = seznam_vazeb.to_h if has? 'SeznamVazeb'

        hash
      end
    end
  end
end