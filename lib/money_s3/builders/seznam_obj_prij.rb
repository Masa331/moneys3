require 'money_s3/builders/base_builder'
require 'money_s3/builders/obj_prij'

module MoneyS3
  module Builders
    class SeznamObjPrij
      include BaseBuilder

      attr_accessor :obj_prij

      def builder
        root = Ox::Element.new(element_name)

        if obj_prij
          obj_prij.each { |i| root << ObjPrij.new(i, 'ObjPrij').builder }
        end

        root
      end
    end
  end
end