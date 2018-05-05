module MoneyS3
  module Builders
    class ParametrKartaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :parametr
          root << ParametrType.new('Parametr', data[:parametr]).builder
        end
        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('Value', data[:value]) if data.key? :value

        root
      end
    end
  end
end