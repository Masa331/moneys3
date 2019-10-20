module MoneyS3
  module Builders
    class MsgKomponentaType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :km_karta
          root << MessageType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :sklad
          root << MessageType.new('Sklad', data[:sklad]).builder
        end

        root
      end
    end
  end
end