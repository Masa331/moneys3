module MoneyS3
  module Builders
    class SkupinaFiremType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkratka', data[:zkratka], data[:zkratka_attributes]) if data.key? :zkratka
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka

        root
      end
    end
  end
end