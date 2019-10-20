module MoneyS3
  module Builders
    class PolFakturyType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('PocetMJ', data[:pocet_mj], data[:pocet_mj_attributes]) if data.key? :pocet_mj
        root << build_element('SazbaDPH', data[:sazba_dph], data[:sazba_dph_attributes]) if data.key? :sazba_dph
        root << build_element('Cena', data[:cena], data[:cena_attributes]) if data.key? :cena
        if data.key? :souhrn_dph
          root << SouhrnDPHPolType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('CenaTyp', data[:cena_typ], data[:cena_typ_attributes]) if data.key? :cena_typ
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('Poradi', data[:poradi], data[:poradi_attributes]) if data.key? :poradi
        root << build_element('KodDPH', data[:kod_dph], data[:kod_dph_attributes]) if data.key? :kod_dph
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Predkontac', data[:predkontac], data[:predkontac_attributes]) if data.key? :predkontac
        root << build_element('Valuty', data[:valuty], data[:valuty_attributes]) if data.key? :valuty
        if data.key? :neskl_polozka
          root << NesklPolozka.new('NesklPolozka', data[:neskl_polozka]).builder
        end
        root << build_element('CenaPoSleve', data[:cena_po_sleve], data[:cena_po_sleve_attributes]) if data.key? :cena_po_sleve
        root << build_element('ZvlRezim', data[:zvl_rezim], data[:zvl_rezim_attributes]) if data.key? :zvl_rezim
        root << build_element('ZvlDPH', data[:zvl_dph], data[:zvl_dph_attributes]) if data.key? :zvl_dph
        root << build_element('RezimEET', data[:rezim_eet], data[:rezim_eet_attributes]) if data.key? :rezim_eet
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