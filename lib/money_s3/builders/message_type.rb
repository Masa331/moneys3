require 'money_s3/builders/base_builder'
require 'money_s3/builders/reference_type'
require 'money_s3/builders/error_info_type'

module MoneyS3
  module Builders
    class MessageType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :status
          element = Ox::Element.new('Status')
          element << attributes[:status] if attributes[:status]
          root << element
        end

        if attributes.key? :reference
          root << ReferenceType.new(attributes[:reference], 'Reference').builder
        end

        if attributes.key? :error_info
          attributes[:error_info].each { |i| root << ErrorInfoType.new(i, 'ErrorInfo').builder }
        end

        root
      end
    end
  end
end