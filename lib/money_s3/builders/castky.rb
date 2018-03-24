require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Castky
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Celkem', data[:celkem]) if data.key? :celkem
        root << build_element('Zaklad_0', data[:zaklad_0]) if data.key? :zaklad_0
        root << build_element('Zaklad_1', data[:zaklad_1]) if data.key? :zaklad_1
        root << build_element('Zaklad_2', data[:zaklad_2]) if data.key? :zaklad_2
        root << build_element('Zaklad_3', data[:zaklad_3]) if data.key? :zaklad_3
        root << build_element('DPH_1', data[:dph_1]) if data.key? :dph_1
        root << build_element('DPH_2', data[:dph_2]) if data.key? :dph_2
        root << build_element('DPH_3', data[:dph_3]) if data.key? :dph_3
        root << build_element('CestSluzba', data[:cest_sluzba]) if data.key? :cest_sluzba
        root << build_element('PouzZb_1', data[:pouz_zb_1]) if data.key? :pouz_zb_1
        root << build_element('PouzZb_2', data[:pouz_zb_2]) if data.key? :pouz_zb_2
        root << build_element('PouzZb_3', data[:pouz_zb_3]) if data.key? :pouz_zb_3
        root << build_element('UrcCerpZct', data[:urc_cerp_zct]) if data.key? :urc_cerp_zct
        root << build_element('CerpZuct', data[:cerp_zuct]) if data.key? :cerp_zuct

        root
      end
    end
  end
end