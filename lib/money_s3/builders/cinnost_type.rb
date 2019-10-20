module MoneyS3
  module Builders
    class CinnostType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn

        root
      end
    end
  end
end