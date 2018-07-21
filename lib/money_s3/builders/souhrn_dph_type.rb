module MoneyS3
  module Builders
    class SouhrnDPHType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zaklad0', data[:zaklad0], data[:zaklad0_attributes]) if data.key? :zaklad0
        root << build_element('Zaklad5', data[:zaklad5], data[:zaklad5_attributes]) if data.key? :zaklad5
        root << build_element('Zaklad22', data[:zaklad22], data[:zaklad22_attributes]) if data.key? :zaklad22
        root << build_element('DPH5', data[:dph5], data[:dph5_attributes]) if data.key? :dph5
        root << build_element('DPH22', data[:dph22], data[:dph22_attributes]) if data.key? :dph22
        if data.key? :seznam_dalsi_sazby
          element = Ox::Element.new('SeznamDalsiSazby')
          data[:seznam_dalsi_sazby].each { |i| element << DalsiSazba.new('DalsiSazba', i).builder }
          root << element
        end

        root
      end
    end
  end
end