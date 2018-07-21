module MoneyS3
  module Builders
    class ObdobiDPH2
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('DatumOd', data[:datum_od], data[:datum_od_attributes]) if data.key? :datum_od
        root << build_element('PohD_1', data[:poh_d_1], data[:poh_d_1_attributes]) if data.key? :poh_d_1
        root << build_element('PohD_2', data[:poh_d_2], data[:poh_d_2_attributes]) if data.key? :poh_d_2
        root << build_element('PohD_3', data[:poh_d_3], data[:poh_d_3_attributes]) if data.key? :poh_d_3
        root << build_element('PohD_4', data[:poh_d_4], data[:poh_d_4_attributes]) if data.key? :poh_d_4
        root << build_element('PohD_5', data[:poh_d_5], data[:poh_d_5_attributes]) if data.key? :poh_d_5
        root << build_element('PohD_6', data[:poh_d_6], data[:poh_d_6_attributes]) if data.key? :poh_d_6

        root
      end
    end
  end
end