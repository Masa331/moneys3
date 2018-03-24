require 'money_s3/builders/base_builder'
require 'money_s3/builders/child_kusovnik_type'
require 'money_s3/builders/reference'

module MoneyS3
  module Builders
    class KomponentaKusovnikType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :child
          root << ChildKusovnikType.new('Child', data[:child]).builder
        end

        if data.key? :reference
          root << Reference.new('Reference', data[:reference]).builder
        end

        root
      end
    end
  end
end