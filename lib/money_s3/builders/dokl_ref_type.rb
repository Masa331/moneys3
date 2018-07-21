module MoneyS3
  module Builders
    class DoklRefType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('IDDokladu', data[:id_dokladu], data[:id_dokladu_attributes]) if data.key? :id_dokladu
        root << build_element('CisloDokladu', data[:cislo_dokladu], data[:cislo_dokladu_attributes]) if data.key? :cislo_dokladu
        root << build_element('DruhDokladu', data[:druh_dokladu], data[:druh_dokladu_attributes]) if data.key? :druh_dokladu
        root << build_element('Rok', data[:rok], data[:rok_attributes]) if data.key? :rok
        if data.key? :eet
          root << EETType.new('EET', data[:eet]).builder
        end

        root
      end
    end
  end
end