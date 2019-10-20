module MoneyS3
  module Builders
    class MsgFirmaType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :osoba
          data[:osoba].each { |i| root << MessageType.new('Osoba', i).builder }
        end

        root
      end
    end
  end
end