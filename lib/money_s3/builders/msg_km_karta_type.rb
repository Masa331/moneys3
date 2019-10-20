module MoneyS3
  module Builders
    class MsgKmKartaType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :komponenta
          data[:komponenta].each { |i| root << MsgKomponentaType.new('Komponenta', i).builder }
        end

        root
      end
    end
  end
end