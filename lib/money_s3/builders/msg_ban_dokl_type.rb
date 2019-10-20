module MoneyS3
  module Builders
    class MsgBanDoklType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :adresa
          root << MessageType.new('Adresa', data[:adresa]).builder
        end
        if data.key? :ucet
          root << MessageType.new('Ucet', data[:ucet]).builder
        end
        if data.key? :uhrada
          data[:uhrada].each { |i| root << MessageType.new('Uhrada', i).builder }
        end

        root
      end
    end
  end
end