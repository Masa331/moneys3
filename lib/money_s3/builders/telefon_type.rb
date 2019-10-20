module MoneyS3
  module Builders
    class TelefonType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Pred', data[:pred], data[:pred_attributes]) if data.key? :pred
        root << build_element('Cislo', data[:cislo], data[:cislo_attributes]) if data.key? :cislo
        root << build_element('Klap', data[:klap], data[:klap_attributes]) if data.key? :klap

        root
      end
    end
  end
end