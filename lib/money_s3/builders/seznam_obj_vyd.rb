require 'money_s3/builders/base_builder'
require 'money_s3/builders/obj_vyd'

module MoneyS3
  module Builders
    class SeznamObjVyd
      include BaseBuilder

      attr_accessor :obj_vyd

      def builder
        root = Ox::Element.new(element_name)

        if obj_vyd
          obj_vyd.each { |i| root << ObjVyd.new(i, 'ObjVyd').builder }
        end

        root
      end
    end
  end
end