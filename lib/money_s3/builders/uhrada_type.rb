require 'money_s3/builders/base_builder'
require 'money_s3/builders/dokl_ref_type'
require 'money_s3/builders/doklad_hraz'
require 'money_s3/builders/valuty_hraz'
require 'money_s3/builders/valuty_uhr'
require 'money_s3/builders/kurz_rozd'
require 'money_s3/builders/uhrada_pduhrada'

module MoneyS3
  module Builders
    class UhradaType
      include BaseBuilder

      attr_accessor :prijem, :poradi, :rok_poradi, :datum, :dat_upl_dph, :castka, :zpusob_uhr, :platidlo, :doklad_uhr, :doklad_hraz, :valuty_hraz, :valuty_uhr, :kurz_rozd, :seznam_pd_uhrad

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Prijem') << prijem) if prijem
        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('RokPoradi') << rok_poradi) if rok_poradi
        root << (Ox::Element.new('Datum') << datum) if datum
        root << (Ox::Element.new('DatUplDPH') << dat_upl_dph) if dat_upl_dph
        root << (Ox::Element.new('Castka') << castka) if castka
        root << (Ox::Element.new('ZpusobUhr') << zpusob_uhr) if zpusob_uhr
        root << (Ox::Element.new('Platidlo') << platidlo) if platidlo
        root << DoklRefType.new(doklad_uhr, 'DokladUhr').builder if doklad_uhr
        root << DokladHraz.new(doklad_hraz, 'DokladHraz').builder if doklad_hraz
        root << ValutyHraz.new(valuty_hraz, 'ValutyHraz').builder if valuty_hraz
        root << ValutyUhr.new(valuty_uhr, 'ValutyUhr').builder if valuty_uhr
        root << KurzRozd.new(kurz_rozd, 'KurzRozd').builder if kurz_rozd

        if seznam_pd_uhrad
          element = Ox::Element.new('SeznamPDUhrad')
          seznam_pd_uhrad.each { |i| element << UhradaPduhrada.new(i, 'Uhrada_PDUhrada').builder }
          root << element
        end

        root
      end
    end
  end
end