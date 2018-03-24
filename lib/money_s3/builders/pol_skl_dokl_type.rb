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
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('PocetMJ', data[:pocet_mj]) if data.key? :pocet_mj
        root << build_element('Cena', data[:cena]) if data.key? :cena
        root << build_element('Valuty', data[:valuty]) if data.key? :valuty
        root << build_element('DPH', data[:dph]) if data.key? :dph
        root << build_element('CenaTyp', data[:cena_typ]) if data.key? :cena_typ
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Stredisko', data[:stredisko]) if data.key? :stredisko
        root << build_element('CenovaHlad', data[:cenova_hlad]) if data.key? :cenova_hlad
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('Vratka', data[:vratka]) if data.key? :vratka
        root << build_element('UcetMD', data[:ucet_md]) if data.key? :ucet_md
        root << build_element('UcetD', data[:ucet_d]) if data.key? :ucet_d
        root << build_element('KodStatuPuv', data[:kod_statu_puv]) if data.key? :kod_statu_puv
        root << build_element('TypTransakce', data[:typ_transakce]) if data.key? :typ_transakce
        root << build_element('Hmotnost', data[:hmotnost]) if data.key? :hmotnost
        root << build_element('PorizCena', data[:poriz_cena]) if data.key? :poriz_cena
        root << build_element('CenaPoSleve', data[:cena_po_sleve]) if data.key? :cena_po_sleve
        root << build_element('ZvlRezim', data[:zvl_rezim]) if data.key? :zvl_rezim
        root << build_element('ZvlDPH', data[:zvl_dph]) if data.key? :zvl_dph
        root << build_element('RezimEET', data[:rezim_eet]) if data.key? :rezim_eet

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

        if data.key? :seznam_dodavek
          element = Ox::Element.new('SeznamDodavek')
          data[:seznam_dodavek].each { |i| element << DodavkaType.new('Dodavka', i).builder }
          root << element
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