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
        at :Popis
      end

      def poznamka
        at :Poznamka
      end

      def pocet_mj
        at :PocetMJ
      end

      def sazba_dph
        at :SazbaDPH
      end

      def cena
        at :Cena
      end

      def cena_typ
        at :CenaTyp
      end

      def sleva
        at :Sleva
      end

      def cinnost
        at :Cinnost
      end

      def poradi
        at :Poradi
      end

      def kod_dph
        at :KodDPH
      end

      def stredisko
        at :Stredisko
      end

      def zakazka
        at :Zakazka
      end

      def predkontac
        at :Predkontac
      end

      def valuty
        at :Valuty
      end

      def cena_po_sleve
        at :CenaPoSleve
      end

      def zvl_rezim
        at :ZvlRezim
      end

      def zvl_dph
        at :ZvlDPH
      end

      def rezim_eet
        at :RezimEET
      end

      def souhrn_dph
        submodel_at(SouhrnDPHPolType, :SouhrnDPH)
      end

      def neskl_polozka
        submodel_at(NesklPolozka, :NesklPolozka)
      end

      def skl_polozka
        submodel_at(PolSklDoklType, :SklPolozka)
      end

      def seznam_vazeb
        submodel_at(SeznamVazeb, :SeznamVazeb)
      end

      def to_h
        hash = {}

        hash[:popis] = popis if raw.key? :Popis
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:pocet_mj] = pocet_mj if raw.key? :PocetMJ
        hash[:sazba_dph] = sazba_dph if raw.key? :SazbaDPH
        hash[:cena] = cena if raw.key? :Cena
        hash[:cena_typ] = cena_typ if raw.key? :CenaTyp
        hash[:sleva] = sleva if raw.key? :Sleva
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:kod_dph] = kod_dph if raw.key? :KodDPH
        hash[:stredisko] = stredisko if raw.key? :Stredisko
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:predkontac] = predkontac if raw.key? :Predkontac
        hash[:valuty] = valuty if raw.key? :Valuty
        hash[:cena_po_sleve] = cena_po_sleve if raw.key? :CenaPoSleve
        hash[:zvl_rezim] = zvl_rezim if raw.key? :ZvlRezim
        hash[:zvl_dph] = zvl_dph if raw.key? :ZvlDPH
        hash[:rezim_eet] = rezim_eet if raw.key? :RezimEET
        hash[:souhrn_dph] = souhrn_dph.to_h if raw.key? :SouhrnDPH
        hash[:neskl_polozka] = neskl_polozka.to_h if raw.key? :NesklPolozka
        hash[:skl_polozka] = skl_polozka.to_h if raw.key? :SklPolozka
        hash[:seznam_vazeb] = seznam_vazeb.to_h if raw.key? :SeznamVazeb

        hash
      end
    end
  end
end