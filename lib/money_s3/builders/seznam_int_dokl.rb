module MoneyS3
  module Builders
    class SeznamIntDokl
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :int_dokl
          data[:int_dokl].each { |i| root << IntDokl.new('IntDokl', i).builder }
        end

        root
      end
    end
  end
end