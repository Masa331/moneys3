module MoneyS3
  module Builders
    class SeznamPrijemka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :prijemka
          data[:prijemka].each { |i| root << Prijemka.new('Prijemka', i).builder }
        end

        root
      end
    end
  end
end