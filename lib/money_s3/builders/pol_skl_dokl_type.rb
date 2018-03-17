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

      attr_accessor :nazev, :pocet_mj, :cena, :valuty, :dph, :cena_typ, :sleva, :cinnost, :zakazka, :stredisko, :cenova_hlad, :poznamka, :vratka, :ucet_md, :ucet_d, :kod_statu_puv, :typ_transakce, :hmotnost, :poriz_cena, :cena_po_sleve, :zvl_rezim, :zvl_dph, :rezim_eet, :sklad, :km_karta, :seznam_vc, :seznam_dodavek, :slozeni

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('PocetMJ') << pocet_mj) if pocet_mj
        root << (Ox::Element.new('Cena') << cena) if cena
        root << (Ox::Element.new('Valuty') << valuty) if valuty
        root << (Ox::Element.new('DPH') << dph) if dph
        root << (Ox::Element.new('CenaTyp') << cena_typ) if cena_typ
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('CenovaHlad') << cenova_hlad) if cenova_hlad
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('Vratka') << vratka) if vratka
        root << (Ox::Element.new('UcetMD') << ucet_md) if ucet_md
        root << (Ox::Element.new('UcetD') << ucet_d) if ucet_d
        root << (Ox::Element.new('KodStatuPuv') << kod_statu_puv) if kod_statu_puv
        root << (Ox::Element.new('TypTransakce') << typ_transakce) if typ_transakce
        root << (Ox::Element.new('Hmotnost') << hmotnost) if hmotnost
        root << (Ox::Element.new('PorizCena') << poriz_cena) if poriz_cena
        root << (Ox::Element.new('CenaPoSleve') << cena_po_sleve) if cena_po_sleve
        root << (Ox::Element.new('ZvlRezim') << zvl_rezim) if zvl_rezim
        root << (Ox::Element.new('ZvlDPH') << zvl_dph) if zvl_dph
        root << (Ox::Element.new('RezimEET') << rezim_eet) if rezim_eet
        root << SkladType.new(sklad, 'Sklad').builder if sklad
        root << KmKartaType.new(km_karta, 'KmKarta').builder if km_karta

        if seznam_vc
          element = Ox::Element.new('SeznamVC')
          seznam_vc.each { |i| element << VyrobniCisloType.new(i, 'VyrobniCislo').builder }
          root << element
        end

        if seznam_dodavek
          element = Ox::Element.new('SeznamDodavek')
          seznam_dodavek.each { |i| element << DodavkaType.new(i, 'Dodavka').builder }
          root << element
        end

        if slozeni
          element = Ox::Element.new('Slozeni')
          slozeni.each { |i| element << DefSubPolType.new(i, 'SubPolozka').builder }
          root << element
        end

        root
      end
    end
  end
end