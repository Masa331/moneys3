require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/vyrobni_cislo'
require 'money_s3/builders/subpol_inv_d_type'

module MoneyS3
  module Builders
    class PolInvDoklType
      include BaseBuilder

      attr_accessor :popis, :zkrat, :slupina, :mj, :mn_inv, :sklad, :km_karta, :seznam_vc, :slozeni

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Slupina') << slupina) if slupina
        root << (Ox::Element.new('MJ') << mj) if mj
        root << (Ox::Element.new('MnInv') << mn_inv) if mn_inv
        root << SkladType.new(sklad, 'Sklad').builder if sklad
        root << KmKartaType.new(km_karta, 'KmKarta').builder if km_karta

        if seznam_vc
          element = Ox::Element.new('SeznamVC')
          seznam_vc.each { |i| element << VyrobniCislo.new(i, 'VyrobniCislo').builder }
          root << element
        end

        if slozeni
          element = Ox::Element.new('Slozeni')
          slozeni.each { |i| element << SubpolInvDType.new(i, 'SubPolozka').builder }
          root << element
        end

        root
      end
    end
  end
end