module MoneyS3
  module Builders
    class MzdoveObdobiType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Mesic', data[:mesic], data[:mesic_attributes]) if data.key? :mesic
        root << build_element('Rok', data[:rok], data[:rok_attributes]) if data.key? :rok
        root << build_element('Funkce', data[:funkce], data[:funkce_attributes]) if data.key? :funkce
        if data.key? :prac_pomer
          root << PracPomer.new('PracPomer', data[:prac_pomer]).builder
        end

        root
      end
    end
  end
end