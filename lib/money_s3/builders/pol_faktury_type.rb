require 'money_s3/builders/base_builder'
require 'money_s3/builders/souhrn_dph_pol_type'
require 'money_s3/builders/neskl_polozka'
require 'money_s3/builders/pol_skl_dokl_type'
require 'money_s3/builders/seznam_vazeb'

module MoneyS3
  module Builders
    class PolFakturyType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :pocet_mj
          element = Ox::Element.new('PocetMJ')
          element << attributes[:pocet_mj] if attributes[:pocet_mj]
          root << element
        end

        if attributes.key? :sazba_dph
          element = Ox::Element.new('SazbaDPH')
          element << attributes[:sazba_dph] if attributes[:sazba_dph]
          root << element
        end

        if attributes.key? :cena
          element = Ox::Element.new('Cena')
          element << attributes[:cena] if attributes[:cena]
          root << element
        end

        if attributes.key? :cena_typ
          element = Ox::Element.new('CenaTyp')
          element << attributes[:cena_typ] if attributes[:cena_typ]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        if attributes.key? :cinnost
          element = Ox::Element.new('Cinnost')
          element << attributes[:cinnost] if attributes[:cinnost]
          root << element
        end

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
          root << element
        end

        if attributes.key? :kod_dph
          element = Ox::Element.new('KodDPH')
          element << attributes[:kod_dph] if attributes[:kod_dph]
          root << element
        end

        if attributes.key? :stredisko
          element = Ox::Element.new('Stredisko')
          element << attributes[:stredisko] if attributes[:stredisko]
          root << element
        end

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :predkontac
          element = Ox::Element.new('Predkontac')
          element << attributes[:predkontac] if attributes[:predkontac]
          root << element
        end

        if attributes.key? :valuty
          element = Ox::Element.new('Valuty')
          element << attributes[:valuty] if attributes[:valuty]
          root << element
        end

        if attributes.key? :cena_po_sleve
          element = Ox::Element.new('CenaPoSleve')
          element << attributes[:cena_po_sleve] if attributes[:cena_po_sleve]
          root << element
        end

        if attributes.key? :zvl_rezim
          element = Ox::Element.new('ZvlRezim')
          element << attributes[:zvl_rezim] if attributes[:zvl_rezim]
          root << element
        end

        if attributes.key? :zvl_dph
          element = Ox::Element.new('ZvlDPH')
          element << attributes[:zvl_dph] if attributes[:zvl_dph]
          root << element
        end

        if attributes.key? :rezim_eet
          element = Ox::Element.new('RezimEET')
          element << attributes[:rezim_eet] if attributes[:rezim_eet]
          root << element
        end

        if attributes.key? :souhrn_dph
          root << SouhrnDPHPolType.new(attributes[:souhrn_dph], 'SouhrnDPH').builder
        end

        if attributes.key? :neskl_polozka
          root << NesklPolozka.new(attributes[:neskl_polozka], 'NesklPolozka').builder
        end

        if attributes.key? :skl_polozka
          root << PolSklDoklType.new(attributes[:skl_polozka], 'SklPolozka').builder
        end

        if attributes.key? :seznam_vazeb
          root << SeznamVazeb.new(attributes[:seznam_vazeb], 'SeznamVazeb').builder
        end

        root
      end
    end
  end
end