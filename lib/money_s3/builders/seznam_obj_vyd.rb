module MoneyS3
  module Builders
    class SeznamObjVyd < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :obj_vyd
          data[:obj_vyd].each { |i| root << ObjVyd.new('ObjVyd', i).builder }
        end

        root
      end
    end
  end
end