module MoneyS3
  module Builders
    class MsgKmKartaType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :komponenta
          data[:komponenta].each { |i| root << MsgKomponentaType.new('Komponenta', i).builder }
        end
        if data.key? :data
          root << KmKartaType.new('Data', data[:data]).builder
        end

        root
      end
    end
  end
end