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

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :prijem
          element = Ox::Element.new('Prijem')
          element << attributes[:prijem] if attributes[:prijem]
          root << element
        end

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
          root << element
        end

        if attributes.key? :rok_poradi
          element = Ox::Element.new('RokPoradi')
          element << attributes[:rok_poradi] if attributes[:rok_poradi]
          root << element
        end

        if attributes.key? :datum
          element = Ox::Element.new('Datum')
          element << attributes[:datum] if attributes[:datum]
          root << element
        end

        if attributes.key? :dat_upl_dph
          element = Ox::Element.new('DatUplDPH')
          element << attributes[:dat_upl_dph] if attributes[:dat_upl_dph]
          root << element
        end

        if attributes.key? :castka
          element = Ox::Element.new('Castka')
          element << attributes[:castka] if attributes[:castka]
          root << element
        end

        if attributes.key? :zpusob_uhr
          element = Ox::Element.new('ZpusobUhr')
          element << attributes[:zpusob_uhr] if attributes[:zpusob_uhr]
          root << element
        end

        if attributes.key? :platidlo
          element = Ox::Element.new('Platidlo')
          element << attributes[:platidlo] if attributes[:platidlo]
          root << element
        end

        if attributes.key? :doklad_uhr
          root << DoklRefType.new(attributes[:doklad_uhr], 'DokladUhr').builder
        end

        if attributes.key? :doklad_hraz
          root << DokladHraz.new(attributes[:doklad_hraz], 'DokladHraz').builder
        end

        if attributes.key? :valuty_hraz
          root << ValutyHraz.new(attributes[:valuty_hraz], 'ValutyHraz').builder
        end

        if attributes.key? :valuty_uhr
          root << ValutyUhr.new(attributes[:valuty_uhr], 'ValutyUhr').builder
        end

        if attributes.key? :kurz_rozd
          root << KurzRozd.new(attributes[:kurz_rozd], 'KurzRozd').builder
        end

        if attributes.key? :seznam_pd_uhrad
          element = Ox::Element.new('SeznamPDUhrad')
          attributes[:seznam_pd_uhrad].each { |i| element << UhradaPduhrada.new(i, 'Uhrada_PDUhrada').builder }
          root << element
        end

        root
      end
    end
  end
end