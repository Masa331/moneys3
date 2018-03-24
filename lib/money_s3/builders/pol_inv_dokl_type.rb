require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/vyrobni_cislo'
require 'money_s3/builders/subpol_inv_d_type'

module MoneyS3
  module Builders
    class PolInvDoklType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :slupina
          element = Ox::Element.new('Slupina')
          element << attributes[:slupina] if attributes[:slupina]
          root << element
        end

        if attributes.key? :mj
          element = Ox::Element.new('MJ')
          element << attributes[:mj] if attributes[:mj]
          root << element
        end

        if attributes.key? :mn_inv
          element = Ox::Element.new('MnInv')
          element << attributes[:mn_inv] if attributes[:mn_inv]
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
          attributes[:seznam_vc].each { |i| element << VyrobniCislo.new(i, 'VyrobniCislo').builder }
          root << element
        end

        if attributes.key? :slozeni
          element = Ox::Element.new('Slozeni')
          attributes[:slozeni].each { |i| element << SubpolInvDType.new(i, 'SubPolozka').builder }
          root << element
        end

        root
      end
    end
  end
end