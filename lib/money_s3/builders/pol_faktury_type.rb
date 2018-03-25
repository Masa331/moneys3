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
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('PocetMJ', data[:pocet_mj]) if data.key? :pocet_mj
        root << build_element('SazbaDPH', data[:sazba_dph]) if data.key? :sazba_dph
        root << build_element('Cena', data[:cena]) if data.key? :cena
        root << build_element('CenaTyp', data[:cena_typ]) if data.key? :cena_typ
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('KodDPH', data[:kod_dph]) if data.key? :kod_dph
        root << build_element('Stredisko', data[:stredisko]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Predkontac', data[:predkontac]) if data.key? :predkontac
        root << build_element('Valuty', data[:valuty]) if data.key? :valuty
        root << build_element('CenaPoSleve', data[:cena_po_sleve]) if data.key? :cena_po_sleve
        root << build_element('ZvlRezim', data[:zvl_rezim]) if data.key? :zvl_rezim
        root << build_element('ZvlDPH', data[:zvl_dph]) if data.key? :zvl_dph
        root << build_element('RezimEET', data[:rezim_eet]) if data.key? :rezim_eet

        if data.key? :souhrn_dph
          root << SouhrnDPHPolType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end

        if data.key? :neskl_polozka
          root << NesklPolozka.new('NesklPolozka', data[:neskl_polozka]).builder
        end

        if data.key? :skl_polozka
          root << PolSklDoklType.new('SklPolozka', data[:skl_polozka]).builder
        end

        if data.key? :seznam_vazeb
          root << SeznamVazeb.new('SeznamVazeb', data[:seznam_vazeb]).builder
        end

        root
      end
    end
  end
end