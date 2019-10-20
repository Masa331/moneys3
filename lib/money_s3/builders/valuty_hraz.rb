module MoneyS3
  module Builders
    class ValutyHraz
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end
        root << build_element('Castka', data[:castka], data[:castka_attributes]) if data.key? :castka

        root
      end
    end
  end
end