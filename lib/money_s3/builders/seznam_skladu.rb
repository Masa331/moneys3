module MoneyS3
  module Builders
    class SeznamSkladu
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :sklad
          data[:sklad].each { |i| root << Sklad.new('Sklad', i).builder }
        end

        root
      end
    end
  end
end