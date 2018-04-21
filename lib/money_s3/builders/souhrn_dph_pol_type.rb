module MoneyS3
  module Builders
    class SouhrnDPHPolType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zaklad_MJ', data[:zaklad_mj]) if data.key? :zaklad_mj
        root << build_element('DPH_MJ', data[:dph_mj]) if data.key? :dph_mj
        root << build_element('Zaklad', data[:zaklad]) if data.key? :zaklad
        root << build_element('DPH', data[:dph]) if data.key? :dph
        if data.key? :valuty
          root << Valuty.new('Valuty', data[:valuty]).builder
        end

        root
      end
    end
  end
end