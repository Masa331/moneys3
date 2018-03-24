require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Castky
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :celkem
          element = Ox::Element.new('Celkem')
          element << attributes[:celkem] if attributes[:celkem]
          root << element
        end

        if attributes.key? :zaklad_0
          element = Ox::Element.new('Zaklad_0')
          element << attributes[:zaklad_0] if attributes[:zaklad_0]
          root << element
        end

        if attributes.key? :zaklad_1
          element = Ox::Element.new('Zaklad_1')
          element << attributes[:zaklad_1] if attributes[:zaklad_1]
          root << element
        end

        if attributes.key? :zaklad_2
          element = Ox::Element.new('Zaklad_2')
          element << attributes[:zaklad_2] if attributes[:zaklad_2]
          root << element
        end

        if attributes.key? :zaklad_3
          element = Ox::Element.new('Zaklad_3')
          element << attributes[:zaklad_3] if attributes[:zaklad_3]
          root << element
        end

        if attributes.key? :dph_1
          element = Ox::Element.new('DPH_1')
          element << attributes[:dph_1] if attributes[:dph_1]
          root << element
        end

        if attributes.key? :dph_2
          element = Ox::Element.new('DPH_2')
          element << attributes[:dph_2] if attributes[:dph_2]
          root << element
        end

        if attributes.key? :dph_3
          element = Ox::Element.new('DPH_3')
          element << attributes[:dph_3] if attributes[:dph_3]
          root << element
        end

        if attributes.key? :cest_sluzba
          element = Ox::Element.new('CestSluzba')
          element << attributes[:cest_sluzba] if attributes[:cest_sluzba]
          root << element
        end

        if attributes.key? :pouz_zb_1
          element = Ox::Element.new('PouzZb_1')
          element << attributes[:pouz_zb_1] if attributes[:pouz_zb_1]
          root << element
        end

        if attributes.key? :pouz_zb_2
          element = Ox::Element.new('PouzZb_2')
          element << attributes[:pouz_zb_2] if attributes[:pouz_zb_2]
          root << element
        end

        if attributes.key? :pouz_zb_3
          element = Ox::Element.new('PouzZb_3')
          element << attributes[:pouz_zb_3] if attributes[:pouz_zb_3]
          root << element
        end

        if attributes.key? :urc_cerp_zct
          element = Ox::Element.new('UrcCerpZct')
          element << attributes[:urc_cerp_zct] if attributes[:urc_cerp_zct]
          root << element
        end

        if attributes.key? :cerp_zuct
          element = Ox::Element.new('CerpZuct')
          element << attributes[:cerp_zuct] if attributes[:cerp_zuct]
          root << element
        end

        root
      end
    end
  end
end