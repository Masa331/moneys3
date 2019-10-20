module MoneyS3
  module Builders
    class SeznamVazeb
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :vazba
          root << VazbaType.new('Vazba', data[:vazba]).builder
        end

        root
      end
    end
  end
end