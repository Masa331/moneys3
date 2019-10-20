module MoneyS3
  module Builders
    class ParametrKartaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :parametr
          root << ParametrType.new('Parametr', data[:parametr]).builder
        end
        root << build_element('Poradi', data[:poradi], data[:poradi_attributes]) if data.key? :poradi
        root << build_element('Value', data[:value], data[:value_attributes]) if data.key? :value

        root
      end
    end
  end
end