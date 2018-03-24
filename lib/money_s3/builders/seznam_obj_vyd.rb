require 'money_s3/builders/base_builder'
require 'money_s3/builders/obj_vyd'

module MoneyS3
  module Builders
    class SeznamObjVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :obj_vyd
          attributes[:obj_vyd].each { |i| root << ObjVyd.new(i, 'ObjVyd').builder }
        end

        root
      end
    end
  end
end