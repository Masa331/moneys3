require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/reference_type'
require 'money_s3/parsers/error_info_type'

module MoneyS3
  module Parsers
    class MessageType
      include BaseParser

      def status
        at :Status
      end

      def reference
        submodel_at(ReferenceType, :Reference)
      end

      def error_info
        array_of_at(ErrorInfoType, [:ErrorInfo])
      end

      def to_h
        { status: status,
          reference: reference.to_h,
          error_info: error_info.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end