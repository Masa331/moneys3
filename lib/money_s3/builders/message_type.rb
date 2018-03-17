require 'money_s3/builders/base_builder'
require 'money_s3/builders/reference_type'
require 'money_s3/builders/error_info_type'

module MoneyS3
  module Builders
    class MessageType
      include BaseBuilder

      attr_accessor :status, :reference, :error_info

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Status') << status) if status
        root << ReferenceType.new(reference, 'Reference').builder if reference

        if error_info
          error_info.each { |i| root << ErrorInfoType.new(i, 'ErrorInfo').builder }
        end

        root
      end
    end
  end
end