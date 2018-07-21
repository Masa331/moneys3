module MoneyS3
  module Builders
    class SeznamObjVyd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :obj_vyd
          data[:obj_vyd].each { |i| root << ObjVyd.new('ObjVyd', i).builder }
        end

        root
      end
    end
  end
end