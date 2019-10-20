module MoneyS3
  module Builders
    class DalsiSazba
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('HladinaDPH', data[:hladina_dph], data[:hladina_dph_attributes]) if data.key? :hladina_dph
        root << build_element('Sazba', data[:sazba], data[:sazba_attributes]) if data.key? :sazba
        root << build_element('Zaklad', data[:zaklad], data[:zaklad_attributes]) if data.key? :zaklad
        root << build_element('DPH', data[:dph], data[:dph_attributes]) if data.key? :dph

        root
      end
    end
  end
end