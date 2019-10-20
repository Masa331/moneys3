module MoneyS3
  module Builders
    class MsgFaktPolozType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :skl_polozka
          root << MsgPolozType.new('SklPolozka', data[:skl_polozka]).builder
        end

        root
      end
    end
  end
end