module MoneyS3
  module Builders
    class DoklRefType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('IDDokladu', data[:id_dokladu]) if data.key? :id_dokladu
        root << build_element('CisloDokladu', data[:cislo_dokladu]) if data.key? :cislo_dokladu
        root << build_element('DruhDokladu', data[:druh_dokladu]) if data.key? :druh_dokladu
        root << build_element('Rok', data[:rok]) if data.key? :rok
        if data.key? :eet
          root << EETType.new('EET', data[:eet]).builder
        end

        root
      end
    end
  end
end