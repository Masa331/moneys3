module MoneyS3
  module Builders
    class Vlajky
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :global
          root << VlajkaType.new('Global', data[:global]).builder
        end
        if data.key? :user
          root << VlajkaType.new('User', data[:user]).builder
        end

        root
      end
    end
  end
end