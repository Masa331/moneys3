module MoneyS3
  module Builders
    class PolObjednType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('PocetMJ', data[:pocet_mj], data[:pocet_mj_attributes]) if data.key? :pocet_mj
        root << build_element('ZbyvaMJ', data[:zbyva_mj], data[:zbyva_mj_attributes]) if data.key? :zbyva_mj
        root << build_element('Cena', data[:cena], data[:cena_attributes]) if data.key? :cena
        if data.key? :souhrn_dph
          root << SouhrnDPHPolType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('SazbaDPH', data[:sazba_dph], data[:sazba_dph_attributes]) if data.key? :sazba_dph
        root << build_element('TypCeny', data[:typ_ceny], data[:typ_ceny_attributes]) if data.key? :typ_ceny
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva
        root << build_element('Vystaveno', data[:vystaveno], data[:vystaveno_attributes]) if data.key? :vystaveno
        root << build_element('VyriditNej', data[:vyridit_nej], data[:vyridit_nej_attributes]) if data.key? :vyridit_nej
        root << build_element('Vyridit_do', data[:vyridit_do], data[:vyridit_do_attributes]) if data.key? :vyridit_do
        root << build_element('Vyrizeno', data[:vyrizeno], data[:vyrizeno_attributes]) if data.key? :vyrizeno
        root << build_element('Poradi', data[:poradi], data[:poradi_attributes]) if data.key? :poradi
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('CenovaHlad', data[:cenova_hlad], data[:cenova_hlad_attributes]) if data.key? :cenova_hlad
        root << build_element('Valuty', data[:valuty], data[:valuty_attributes]) if data.key? :valuty
        root << build_element('KodStatuPuv', data[:kod_statu_puv], data[:kod_statu_puv_attributes]) if data.key? :kod_statu_puv
        root << build_element('TypTransakce', data[:typ_transakce], data[:typ_transakce_attributes]) if data.key? :typ_transakce
        root << build_element('Hmotnost', data[:hmotnost], data[:hmotnost_attributes]) if data.key? :hmotnost
        root << build_element('ZvlRezim', data[:zvl_rezim], data[:zvl_rezim_attributes]) if data.key? :zvl_rezim
        root << build_element('ZvlDPH', data[:zvl_dph], data[:zvl_dph_attributes]) if data.key? :zvl_dph
        root << build_element('RezimEET', data[:rezim_eet], data[:rezim_eet_attributes]) if data.key? :rezim_eet
        root << build_element('PredPC', data[:pred_pc], data[:pred_pc_attributes]) if data.key? :pred_pc
        root << build_element('PredmPln', data[:predm_pln], data[:predm_pln_attributes]) if data.key? :predm_pln
        root << build_element('CenaPoSleve', data[:cena_po_sleve], data[:cena_po_sleve_attributes]) if data.key? :cena_po_sleve
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end
        if data.key? :km_karta
          root << KmKartaType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :seznam_vc
          element = Ox::Element.new('SeznamVC')
          data[:seznam_vc].each { |i| element << VyrobniCisloType.new('VyrobniCislo', i).builder }
          root << element
        end
        if data.key? :slozeni
          element = Ox::Element.new('Slozeni')
          data[:slozeni].each { |i| element << SubPolObjType.new('SubPolozka', i).builder }
          root << element
        end
        if data.key? :neskl_polozka
          root << NesklPolozka2.new('NesklPolozka', data[:neskl_polozka]).builder
        end
        root << build_element('UzivatelskaPole', data[:uzivatelska_pole], data[:uzivatelska_pole_attributes]) if data.key? :uzivatelska_pole

        root
      end
    end
  end
end