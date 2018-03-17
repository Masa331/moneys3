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
        { popis: popis,
          poznamka: poznamka,
          pocet_mj: pocet_mj,
          sazba_dph: sazba_dph,
          cena: cena,
          cena_typ: cena_typ,
          sleva: sleva,
          cinnost: cinnost,
          poradi: poradi,
          kod_dph: kod_dph,
          stredisko: stredisko,
          zakazka: zakazka,
          predkontac: predkontac,
          valuty: valuty,
          cena_po_sleve: cena_po_sleve,
          zvl_rezim: zvl_rezim,
          zvl_dph: zvl_dph,
          rezim_eet: rezim_eet,
          souhrn_dph: souhrn_dph.to_h,
          neskl_polozka: neskl_polozka.to_h,
          skl_polozka: skl_polozka.to_h,
          seznam_vazeb: seznam_vazeb.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end