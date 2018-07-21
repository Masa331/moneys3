module MoneyS3
  module Builders
    class Castky
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Celkem', data[:celkem], data[:celkem_attributes]) if data.key? :celkem
        root << build_element('Zaklad_0', data[:zaklad_0], data[:zaklad_0_attributes]) if data.key? :zaklad_0
        root << build_element('Zaklad_1', data[:zaklad_1], data[:zaklad_1_attributes]) if data.key? :zaklad_1
        root << build_element('Zaklad_2', data[:zaklad_2], data[:zaklad_2_attributes]) if data.key? :zaklad_2
        root << build_element('Zaklad_3', data[:zaklad_3], data[:zaklad_3_attributes]) if data.key? :zaklad_3
        root << build_element('DPH_1', data[:dph_1], data[:dph_1_attributes]) if data.key? :dph_1
        root << build_element('DPH_2', data[:dph_2], data[:dph_2_attributes]) if data.key? :dph_2
        root << build_element('DPH_3', data[:dph_3], data[:dph_3_attributes]) if data.key? :dph_3
        root << build_element('CestSluzba', data[:cest_sluzba], data[:cest_sluzba_attributes]) if data.key? :cest_sluzba
        root << build_element('PouzZb_1', data[:pouz_zb_1], data[:pouz_zb_1_attributes]) if data.key? :pouz_zb_1
        root << build_element('PouzZb_2', data[:pouz_zb_2], data[:pouz_zb_2_attributes]) if data.key? :pouz_zb_2
        root << build_element('PouzZb_3', data[:pouz_zb_3], data[:pouz_zb_3_attributes]) if data.key? :pouz_zb_3
        root << build_element('UrcCerpZct', data[:urc_cerp_zct], data[:urc_cerp_zct_attributes]) if data.key? :urc_cerp_zct
        root << build_element('CerpZuct', data[:cerp_zuct], data[:cerp_zuct_attributes]) if data.key? :cerp_zuct

        root
      end
    end
  end
end