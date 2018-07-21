module MoneyS3
  module Builders
    class SouhrnDPHPolType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zaklad_MJ', data[:zaklad_mj], data[:zaklad_mj_attributes]) if data.key? :zaklad_mj
        root << build_element('DPH_MJ', data[:dph_mj], data[:dph_mj_attributes]) if data.key? :dph_mj
        root << build_element('Zaklad', data[:zaklad], data[:zaklad_attributes]) if data.key? :zaklad
        root << build_element('DPH', data[:dph], data[:dph_attributes]) if data.key? :dph
        if data.key? :valuty
          root << Valuty.new('Valuty', data[:valuty]).builder
        end

        root
      end
    end
  end
end