module MoneyS3
  module Builders
    class SeznamFirem
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :firma
          data[:firma].each { |i| root << Firma.new('Firma', i).builder }
        end

        root
      end
    end
  end
end