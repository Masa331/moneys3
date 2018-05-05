module MoneyS3
  module Builders
    class VyrobniCislo
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('VyrobniCis', data[:vyrobni_cis]) if data.key? :vyrobni_cis
        root << build_element('DatVyr', data[:dat_vyr]) if data.key? :dat_vyr
        root << build_element('CarKod', data[:car_kod]) if data.key? :car_kod

        root
      end
    end
  end
end