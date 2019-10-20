module MoneyS3
  module Builders
    class VyrobniCislo
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('VyrobniCis', data[:vyrobni_cis], data[:vyrobni_cis_attributes]) if data.key? :vyrobni_cis
        root << build_element('DatVyr', data[:dat_vyr], data[:dat_vyr_attributes]) if data.key? :dat_vyr
        root << build_element('CarKod', data[:car_kod], data[:car_kod_attributes]) if data.key? :car_kod

        root
      end
    end
  end
end