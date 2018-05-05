module MoneyS3
  module Builders
    class DalsiSazba
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('HladinaDPH', data[:hladina_dph]) if data.key? :hladina_dph
        root << build_element('Sazba', data[:sazba]) if data.key? :sazba
        root << build_element('Zaklad', data[:zaklad]) if data.key? :zaklad
        root << build_element('DPH', data[:dph]) if data.key? :dph

        root
      end
    end
  end
end