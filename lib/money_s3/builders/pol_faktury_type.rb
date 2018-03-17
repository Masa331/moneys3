require 'money_s3/builders/base_builder'
require 'money_s3/builders/souhrn_dph_pol_type'
require 'money_s3/builders/neskl_polozka'
require 'money_s3/builders/pol_skl_dokl_type'
require 'money_s3/builders/seznam_vazeb'

module MoneyS3
  module Builders
    class PolFakturyType
      include BaseBuilder

      attr_accessor :popis, :poznamka, :pocet_mj, :sazba_dph, :cena, :cena_typ, :sleva, :cinnost, :poradi, :kod_dph, :stredisko, :zakazka, :predkontac, :valuty, :cena_po_sleve, :zvl_rezim, :zvl_dph, :rezim_eet, :souhrn_dph, :neskl_polozka, :skl_polozka, :seznam_vazeb

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('PocetMJ') << pocet_mj) if pocet_mj
        root << (Ox::Element.new('SazbaDPH') << sazba_dph) if sazba_dph
        root << (Ox::Element.new('Cena') << cena) if cena
        root << (Ox::Element.new('CenaTyp') << cena_typ) if cena_typ
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('KodDPH') << kod_dph) if kod_dph
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Predkontac') << predkontac) if predkontac
        root << (Ox::Element.new('Valuty') << valuty) if valuty
        root << (Ox::Element.new('CenaPoSleve') << cena_po_sleve) if cena_po_sleve
        root << (Ox::Element.new('ZvlRezim') << zvl_rezim) if zvl_rezim
        root << (Ox::Element.new('ZvlDPH') << zvl_dph) if zvl_dph
        root << (Ox::Element.new('RezimEET') << rezim_eet) if rezim_eet
        root << SouhrnDPHPolType.new(souhrn_dph, 'SouhrnDPH').builder if souhrn_dph
        root << NesklPolozka.new(neskl_polozka, 'NesklPolozka').builder if neskl_polozka
        root << PolSklDoklType.new(skl_polozka, 'SklPolozka').builder if skl_polozka
        root << SeznamVazeb.new(seznam_vazeb, 'SeznamVazeb').builder if seznam_vazeb

        root
      end
    end
  end
end