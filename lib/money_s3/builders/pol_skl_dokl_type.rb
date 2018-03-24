require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/vyrobni_cislo_type'
require 'money_s3/builders/dodavka_type'
require 'money_s3/builders/def_sub_pol_type'

module MoneyS3
  module Builders
    class PolSklDoklType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :pocet_mj
          element = Ox::Element.new('PocetMJ')
          element << attributes[:pocet_mj] if attributes[:pocet_mj]
          root << element
        end

        if attributes.key? :cena
          element = Ox::Element.new('Cena')
          element << attributes[:cena] if attributes[:cena]
          root << element
        end

        if attributes.key? :valuty
          element = Ox::Element.new('Valuty')
          element << attributes[:valuty] if attributes[:valuty]
          root << element
        end

        if attributes.key? :dph
          element = Ox::Element.new('DPH')
          element << attributes[:dph] if attributes[:dph]
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

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :stredisko
          element = Ox::Element.new('Stredisko')
          element << attributes[:stredisko] if attributes[:stredisko]
          root << element
        end

        if attributes.key? :cenova_hlad
          element = Ox::Element.new('CenovaHlad')
          element << attributes[:cenova_hlad] if attributes[:cenova_hlad]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :vratka
          element = Ox::Element.new('Vratka')
          element << attributes[:vratka] if attributes[:vratka]
          root << element
        end

        if attributes.key? :ucet_md
          element = Ox::Element.new('UcetMD')
          element << attributes[:ucet_md] if attributes[:ucet_md]
          root << element
        end

        if attributes.key? :ucet_d
          element = Ox::Element.new('UcetD')
          element << attributes[:ucet_d] if attributes[:ucet_d]
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

        if attributes.key? :poriz_cena
          element = Ox::Element.new('PorizCena')
          element << attributes[:poriz_cena] if attributes[:poriz_cena]
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

        if attributes.key? :sklad
          root << SkladType.new(attributes[:sklad], 'Sklad').builder
        end

        if attributes.key? :km_karta
          root << KmKartaType.new(attributes[:km_karta], 'KmKarta').builder
        end

        if attributes.key? :seznam_vc
          element = Ox::Element.new('SeznamVC')
          attributes[:seznam_vc].each { |i| element << VyrobniCisloType.new(i, 'VyrobniCislo').builder }
          root << element
        end

        if attributes.key? :seznam_dodavek
          element = Ox::Element.new('SeznamDodavek')
          attributes[:seznam_dodavek].each { |i| element << DodavkaType.new(i, 'Dodavka').builder }
          root << element
        end

        if attributes.key? :slozeni
          element = Ox::Element.new('Slozeni')
          attributes[:slozeni].each { |i| element << DefSubPolType.new(i, 'SubPolozka').builder }
          root << element
        end

        root
      end
    end
  end
end