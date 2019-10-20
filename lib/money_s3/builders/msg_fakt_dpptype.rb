module MoneyS3
  module Builders
    class MsgFaktDpptype < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        super.nodes.each do |n|
          root << n
        end

        if data.key? :dod_odb
          root << MsgFirmaType.new('DodOdb', data[:dod_odb]).builder
        end
        if data.key? :polozka
          data[:polozka].each { |i| root << MsgFaktPolozType.new('Polozka', i).builder }
        end

        root
      end
    end
  end
end