module MoneyS3
  module Builders
    class StavZasobyType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zasoba', data[:zasoba], data[:zasoba_attributes]) if data.key? :zasoba
        root << build_element('Rezervace', data[:rezervace], data[:rezervace_attributes]) if data.key? :rezervace
        root << build_element('Objednano', data[:objednano], data[:objednano_attributes]) if data.key? :objednano

        root
      end
    end
  end
end