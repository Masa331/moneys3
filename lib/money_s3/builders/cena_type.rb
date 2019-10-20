module MoneyS3
  module Builders
    class CenaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Limit', data[:limit], data[:limit_attributes]) if data.key? :limit
        root << build_element('Cena', data[:cena], data[:cena_attributes]) if data.key? :cena
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva

        root
      end
    end
  end
end