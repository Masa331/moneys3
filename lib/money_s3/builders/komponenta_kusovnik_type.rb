require 'money_s3/builders/base_builder'
require 'money_s3/builders/child_kusovnik_type'
require 'money_s3/builders/reference'

module MoneyS3
  module Builders
    class KomponentaKusovnikType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :child
          root << ChildKusovnikType.new(attributes[:child], 'Child').builder
        end

        if attributes.key? :reference
          root << Reference.new(attributes[:reference], 'Reference').builder
        end

        root
      end
    end
  end
end