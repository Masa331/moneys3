module MoneyS3
  module Builders
    class MsgUcPohybType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        root
      end
    end
  end
end