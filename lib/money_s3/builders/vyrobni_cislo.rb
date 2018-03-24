require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VyrobniCislo
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :vyrobni_cis
          element = Ox::Element.new('VyrobniCis')
          element << attributes[:vyrobni_cis] if attributes[:vyrobni_cis]
          root << element
        end

        if attributes.key? :dat_vyr
          element = Ox::Element.new('DatVyr')
          element << attributes[:dat_vyr] if attributes[:dat_vyr]
          root << element
        end

        if attributes.key? :car_kod
          element = Ox::Element.new('CarKod')
          element << attributes[:car_kod] if attributes[:car_kod]
          root << element
        end

        root
      end
    end
  end
end