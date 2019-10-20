module MoneyS3
  module Builders
    class MsgZasobaType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :km_kart
          root << MessageType.new('KmKart', data[:km_kart]).builder
        end
        if data.key? :sklad
          root << MessageType.new('Sklad', data[:sklad]).builder
        end

        root
      end
    end
  end
end