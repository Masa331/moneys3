module MoneyS3
  module Builders
    class SeznamDLVyd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :dl_vyd
          data[:dl_vyd].each { |i| root << DLVyd.new('DLVyd', i).builder }
        end

        root
      end
    end
  end
end