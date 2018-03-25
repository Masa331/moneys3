require 'money_s3/builders/base_builder'
require 'money_s3/builders/obj_vyd'

module MoneyS3
  module Builders
    class SeznamObjVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :obj_vyd
          data[:obj_vyd].each { |i| root << ObjVyd.new('ObjVyd', i).builder }
        end

        root
      end
    end
  end
end