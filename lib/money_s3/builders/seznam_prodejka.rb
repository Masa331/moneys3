module MoneyS3
  module Builders
    class SeznamProdejka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :prodejka
          data[:prodejka].each { |i| root << Prodejka.new('Prodejka', i).builder }
        end

        root
      end
    end
  end
end