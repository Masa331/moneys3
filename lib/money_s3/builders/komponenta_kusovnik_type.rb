require 'money_s3/builders/base_builder'
require 'money_s3/builders/child_kusovnik_type'
require 'money_s3/builders/reference'

module MoneyS3
  module Builders
    class KomponentaKusovnikType
      include BaseBuilder

      attr_accessor :child, :reference

      def builder
        root = Ox::Element.new(element_name)

        root << ChildKusovnikType.new(child, 'Child').builder if child
        root << Reference.new(reference, 'Reference').builder if reference

        root
      end
    end
  end
end