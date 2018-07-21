module MoneyS3
  module Builders
    class PolSklDoklType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('PocetMJ', data[:pocet_mj], data[:pocet_mj_attributes]) if data.key? :pocet_mj
        root << build_element('Cena', data[:cena], data[:cena_attributes]) if data.key? :cena
        root << build_element('Valuty', data[:valuty], data[:valuty_attributes]) if data.key? :valuty
        root << build_element('DPH', data[:dph], data[:dph_attributes]) if data.key? :dph
        root << build_element('CenaTyp', data[:cena_typ], data[:cena_typ_attributes]) if data.key? :cena_typ
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('CenovaHlad', data[:cenova_hlad], data[:cenova_hlad_attributes]) if data.key? :cenova_hlad
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('Vratka', data[:vratka], data[:vratka_attributes]) if data.key? :vratka
        root << build_element('UcetMD', data[:ucet_md], data[:ucet_md_attributes]) if data.key? :ucet_md
        root << build_element('UcetD', data[:ucet_d], data[:ucet_d_attributes]) if data.key? :ucet_d
        root << build_element('KodStatuPuv', data[:kod_statu_puv], data[:kod_statu_puv_attributes]) if data.key? :kod_statu_puv
        root << build_element('TypTransakce', data[:typ_transakce], data[:typ_transakce_attributes]) if data.key? :typ_transakce
        root << build_element('Hmotnost', data[:hmotnost], data[:hmotnost_attributes]) if data.key? :hmotnost
        root << build_element('PorizCena', data[:poriz_cena], data[:poriz_cena_attributes]) if data.key? :poriz_cena
        root << build_element('CenaPoSleve', data[:cena_po_sleve], data[:cena_po_sleve_attributes]) if data.key? :cena_po_sleve
        root << build_element('ZvlRezim', data[:zvl_rezim], data[:zvl_rezim_attributes]) if data.key? :zvl_rezim
        root << build_element('ZvlDPH', data[:zvl_dph], data[:zvl_dph_attributes]) if data.key? :zvl_dph
        root << build_element('RezimEET', data[:rezim_eet], data[:rezim_eet_attributes]) if data.key? :rezim_eet
        if data.key? :seznam_vc
          element = Ox::Element.new('SeznamVC')
          data[:seznam_vc].each { |i| element << VyrobniCisloType.new('VyrobniCislo', i).builder }
          root << element
        end
        if data.key? :seznam_dodavek
          element = Ox::Element.new('SeznamDodavek')
          data[:seznam_dodavek].each { |i| element << DodavkaType.new('Dodavka', i).builder }
          root << element
        end
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end
        if data.key? :km_karta
          root << KmKartaType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :slozeni
          element = Ox::Element.new('Slozeni')
          data[:slozeni].each { |i| element << DefSubPolType.new('SubPolozka', i).builder }
          root << element
        end

        root
      end
    end
  end
end