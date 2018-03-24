require 'money_s3/builders/base_builder'
require 'money_s3/builders/reference_type'
require 'money_s3/builders/error_info_type'

module MoneyS3
  module Builders
    class MessageType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Status', data[:status]) if data.key? :status

        if data.key? :reference
          root << ReferenceType.new('Reference', data[:reference]).builder
        end

        if data.key? :error_info
          data[:error_info].each { |i| root << ErrorInfoType.new('ErrorInfo', i).builder }
        end

        root
      end
    end
  end
end