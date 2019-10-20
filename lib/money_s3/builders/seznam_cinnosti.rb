module MoneyS3
  module Builders
    class SeznamCinnosti
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :cinnost
          data[:cinnost].each { |i| root << Cinnost.new('Cinnost', i).builder }
        end

        root
      end
    end
  end
end