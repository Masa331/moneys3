require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/souhrn_dph_pol_type'
require 'money_s3/parsers/neskl_polozka'
require 'money_s3/parsers/pol_skl_dokl_type'
require 'money_s3/parsers/seznam_vazeb'

module MoneyS3
  module Parsers
    class PolFakturyType
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

      def sazba_dph
        at 'SazbaDPH'
      end

      def cena
        at 'Cena'
      end

      def cena_typ
        at 'CenaTyp'
      end

      def sleva
        at 'Sleva'
      end

      def cinnost
        at 'Cinnost'
      end

      def poradi
        at 'Poradi'
      end

      def kod_dph
        at 'KodDPH'
      end

      def stredisko
        at 'Stredisko'
      end

      def zakazka
        at 'Zakazka'
      end

      def predkontac
        at 'Predkontac'
      end

      def valuty
        at 'Valuty'
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

      def souhrn_dph
        submodel_at(SouhrnDPHPolType, 'SouhrnDPH')
      end

      def neskl_polozka
        submodel_at(NesklPolozka, 'NesklPolozka')
      end

      def skl_polozka
        submodel_at(PolSklDoklType, 'SklPolozka')
      end

      def seznam_vazeb
        submodel_at(SeznamVazeb, 'SeznamVazeb')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:popis] = popis if has? 'Popis'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'
        hash[:cena] = cena if has? 'Cena'
        hash[:cena_typ] = cena_typ if has? 'CenaTyp'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:kod_dph] = kod_dph if has? 'KodDPH'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:predkontac] = predkontac if has? 'Predkontac'
        hash[:valuty] = valuty if has? 'Valuty'
        hash[:cena_po_sleve] = cena_po_sleve if has? 'CenaPoSleve'
        hash[:zvl_rezim] = zvl_rezim if has? 'ZvlRezim'
        hash[:zvl_dph] = zvl_dph if has? 'ZvlDPH'
        hash[:rezim_eet] = rezim_eet if has? 'RezimEET'
        hash[:souhrn_dph] = souhrn_dph.to_h_with_attrs if has? 'SouhrnDPH'
        hash[:neskl_polozka] = neskl_polozka.to_h_with_attrs if has? 'NesklPolozka'
        hash[:skl_polozka] = skl_polozka.to_h_with_attrs if has? 'SklPolozka'
        hash[:seznam_vazeb] = seznam_vazeb.to_h_with_attrs if has? 'SeznamVazeb'

        hash
      end
    end
  end
end