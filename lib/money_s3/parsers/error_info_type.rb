require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class ErrorInfoType
      include BaseParser

      def error_type_coded
        at :ErrorTypeCoded
      end

      def error_type_other
        at :ErrorTypeOther
      end

      def error_code
        at :ErrorCode
      end

      def error_description
        at :ErrorDescription
      end

      def to_h
        hash = {}

        hash[:error_type_coded] = error_type_coded if raw.key? :ErrorTypeCoded
        hash[:error_type_other] = error_type_other if raw.key? :ErrorTypeOther
        hash[:error_code] = error_code if raw.key? :ErrorCode
        hash[:error_description] = error_description if raw.key? :ErrorDescription

        hash
      end
    end
  end
end