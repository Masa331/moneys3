module MoneyS3
  module Builders
    class MsgInvDoklType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :polozka
          data[:polozka].each { |i| root << MsgPolozType.new('Polozka', i).builder }
        end

        root
      end
    end
  end
end