require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VyrobniCislo
      include BaseBuilder

      attr_accessor :vyrobni_cis, :dat_vyr, :car_kod

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('VyrobniCis') << vyrobni_cis) if vyrobni_cis
        root << (Ox::Element.new('DatVyr') << dat_vyr) if dat_vyr
        root << (Ox::Element.new('CarKod') << car_kod) if car_kod

        root
      end
    end
  end
end