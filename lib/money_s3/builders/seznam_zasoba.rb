module MoneyS3
  module Builders
    class SeznamZasoba
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :zasoba
          data[:zasoba].each { |i| root << Zasoba.new('Zasoba', i).builder }
        end

        root
      end
    end
  end
end