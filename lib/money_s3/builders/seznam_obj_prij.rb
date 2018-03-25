require 'money_s3/builders/base_builder'
require 'money_s3/builders/obj_prij'

module MoneyS3
  module Builders
    class SeznamObjPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :obj_prij
          data[:obj_prij].each { |i| root << ObjPrij.new('ObjPrij', i).builder }
        end

        root
      end
    end
  end
end