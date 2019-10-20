module MoneyS3
  module Builders
    class SeznamKmKarta
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :km_karta
          data[:km_karta].each { |i| root << KmKarta.new('KmKarta', i).builder }
        end

        root
      end
    end
  end
end