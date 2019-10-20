module MoneyS3
  module Builders
    class SeznamInvDokl
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :inv_doklad
          data[:inv_doklad].each { |i| root << InvDoklType.new('InvDoklad', i).builder }
        end

        root
      end
    end
  end
end