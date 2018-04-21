module MoneyS3
  module Builders
    class ParametrType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('ID', data[:id]) if data.key? :id
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('Druh', data[:druh]) if data.key? :druh
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('MJ', data[:mj]) if data.key? :mj
        root << build_element('UzivCode', data[:uziv_code]) if data.key? :uziv_code
        root << build_element('Hodnoty', data[:hodnoty]) if data.key? :hodnoty

        root
      end
    end
  end
end