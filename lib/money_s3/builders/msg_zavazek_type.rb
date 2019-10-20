module MoneyS3
  module Builders
    class MsgZavazekType < MessageType
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
        if data.key? :polozka
          data[:polozka].each { |i| root << MessageType.new('Polozka', i).builder }
        end

        root
      end
    end
  end
end