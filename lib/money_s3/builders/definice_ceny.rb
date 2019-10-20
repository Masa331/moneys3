module MoneyS3
  module Builders
    class DefiniceCeny
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('SDPH', data[:sdph], data[:sdph_attributes]) if data.key? :sdph
        root << build_element('Zaok', data[:zaok], data[:zaok_attributes]) if data.key? :zaok
        root << build_element('ZpusobZao', data[:zpusob_zao], data[:zpusob_zao_attributes]) if data.key? :zpusob_zao
        root << build_element('VychA', data[:vych_a], data[:vych_a_attributes]) if data.key? :vych_a
        root << build_element('ZpusobZmA', data[:zpusob_zm_a], data[:zpusob_zm_a_attributes]) if data.key? :zpusob_zm_a
        root << build_element('VychB', data[:vych_b], data[:vych_b_attributes]) if data.key? :vych_b
        root << build_element('ZpusobZmB', data[:zpusob_zm_b], data[:zpusob_zm_b_attributes]) if data.key? :zpusob_zm_b
        if data.key? :sleva1
          root << SlevaType.new('Sleva1', data[:sleva1]).builder
        end
        if data.key? :sleva2
          root << SlevaType.new('Sleva2', data[:sleva2]).builder
        end
        if data.key? :sleva3
          root << SlevaType.new('Sleva3', data[:sleva3]).builder
        end
        if data.key? :sleva4
          root << SlevaType.new('Sleva4', data[:sleva4]).builder
        end
        if data.key? :sleva5
          root << SlevaType.new('Sleva5', data[:sleva5]).builder
        end

        root
      end
    end
  end
end