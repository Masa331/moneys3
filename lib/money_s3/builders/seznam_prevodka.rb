module MoneyS3
  module Builders
    class SeznamPrevodka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :prevodka
          data[:prevodka].each { |i| root << Prevodka.new('Prevodka', i).builder }
        end

        root
      end
    end
  end
end