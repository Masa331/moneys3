require 'money_s3/builders/base_builder'
require 'money_s3/builders/souhrn_dph_pol_type'
require 'money_s3/builders/sklad_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/neskl_polozka'
require 'money_s3/builders/vyrobni_cislo_type'
require 'money_s3/builders/sub_pol_obj_type'

module MoneyS3
  module Builders
    class PolObjednType
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

        if attributes.key? :zbyva_mj
          element = Ox::Element.new('ZbyvaMJ')
          element << attributes[:zbyva_mj] if attributes[:zbyva_mj]
          root << element
        end

        if attributes.key? :cena
          element = Ox::Element.new('Cena')
          element << attributes[:cena] if attributes[:cena]
          root << element
        end

        if attributes.key? :sazba_dph
          element = Ox::Element.new('SazbaDPH')
          element << attributes[:sazba_dph] if attributes[:sazba_dph]
          root << element
        end

        if attributes.key? :typ_ceny
          element = Ox::Element.new('TypCeny')
          element << attributes[:typ_ceny] if attributes[:typ_ceny]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        if attributes.key? :vystaveno
          element = Ox::Element.new('Vystaveno')
          element << attributes[:vystaveno] if attributes[:vystaveno]
          root << element
        end

        if attributes.key? :vyridit_nej
          element = Ox::Element.new('VyriditNej')
          element << attributes[:vyridit_nej] if attributes[:vyridit_nej]
          root << element
        end

        if attributes.key? :vyridit_do
          element = Ox::Element.new('Vyridit_do')
          element << attributes[:vyridit_do] if attributes[:vyridit_do]
          root << element
        end

        if attributes.key? :vyrizeno
          element = Ox::Element.new('Vyrizeno')
          element << attributes[:vyrizeno] if attributes[:vyrizeno]
          root << element
        end

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
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

        if attributes.key? :cinnost
          element = Ox::Element.new('Cinnost')
          element << attributes[:cinnost] if attributes[:cinnost]
          root << element
        end

        if attributes.key? :cenova_hlad
          element = Ox::Element.new('CenovaHlad')
          element << attributes[:cenova_hlad] if attributes[:cenova_hlad]
          root << element
        end

        if attributes.key? :valuty
          element = Ox::Element.new('Valuty')
          element << attributes[:valuty] if attributes[:valuty]
          root << element
        end

        if attributes.key? :kod_statu_puv
          element = Ox::Element.new('KodStatuPuv')
          element << attributes[:kod_statu_puv] if attributes[:kod_statu_puv]
          root << element
        end

        if attributes.key? :typ_transakce
          element = Ox::Element.new('TypTransakce')
          element << attributes[:typ_transakce] if attributes[:typ_transakce]
          root << element
        end

        if attributes.key? :hmotnost
          element = Ox::Element.new('Hmotnost')
          element << attributes[:hmotnost] if attributes[:hmotnost]
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

        if attributes.key? :pred_pc
          element = Ox::Element.new('PredPC')
          element << attributes[:pred_pc] if attributes[:pred_pc]
          root << element
        end

        if attributes.key? :souhrn_dph
          root << SouhrnDPHPolType.new(attributes[:souhrn_dph], 'SouhrnDPH').builder
        end

        if attributes.key? :sklad
          root << SkladType.new(attributes[:sklad], 'Sklad').builder
        end

        if attributes.key? :km_karta
          root << KmKartaType.new(attributes[:km_karta], 'KmKarta').builder
        end

        if attributes.key? :neskl_polozka
          root << NesklPolozka.new(attributes[:neskl_polozka], 'NesklPolozka').builder
        end

        if attributes.key? :seznam_vc
          element = Ox::Element.new('SeznamVC')
          attributes[:seznam_vc].each { |i| element << VyrobniCisloType.new(i, 'VyrobniCislo').builder }
          root << element
        end

        if attributes.key? :slozeni
          element = Ox::Element.new('Slozeni')
          attributes[:slozeni].each { |i| element << SubPolObjType.new(i, 'SubPolozka').builder }
          root << element
        end

        root
      end
    end
  end
end