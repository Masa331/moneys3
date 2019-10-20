module MoneyS3
  module Builders
    class SeznamZakazka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :zakazka
          data[:zakazka].each { |i| root << Zakazka.new('Zakazka', i).builder }
        end

        root
      end
    end
  end
end