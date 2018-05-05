module MoneyS3
  module Builders
    class ObdobiDPH2
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('DatumOd', data[:datum_od]) if data.key? :datum_od
        root << build_element('PohD_1', data[:poh_d_1]) if data.key? :poh_d_1
        root << build_element('PohD_2', data[:poh_d_2]) if data.key? :poh_d_2
        root << build_element('PohD_3', data[:poh_d_3]) if data.key? :poh_d_3
        root << build_element('PohD_4', data[:poh_d_4]) if data.key? :poh_d_4
        root << build_element('PohD_5', data[:poh_d_5]) if data.key? :poh_d_5
        root << build_element('PohD_6', data[:poh_d_6]) if data.key? :poh_d_6

        root
      end
    end
  end
end