module MoneyS3
  module Builders
    class SeznamVyrobka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :vyrobka
          data[:vyrobka].each { |i| root << Vyrobka.new('Vyrobka', i).builder }
        end

        root
      end
    end
  end
end