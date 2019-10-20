module MoneyS3
  module Builders
    class SeznamObjVyd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :obj_vyd
          data[:obj_vyd].each { |i| root << ObjVyd.new('ObjVyd', i).builder }
        end

        root
      end
    end
  end
end