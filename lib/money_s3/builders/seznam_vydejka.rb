module MoneyS3
  module Builders
    class SeznamVydejka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :vydejka
          data[:vydejka].each { |i| root << Vydejka.new('Vydejka', i).builder }
        end

        root
      end
    end
  end
end