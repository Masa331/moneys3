module MoneyS3
  module Parsers
    class ErrorInfoType
      include ParserCore::BaseParser

      def error_type_coded
        at 'ErrorTypeCoded'
      end

      def error_type_other
        at 'ErrorTypeOther'
      end

      def error_code
        at 'ErrorCode'
      end

      def error_description
        at 'ErrorDescription'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:error_type_coded] = error_type_coded if has? 'ErrorTypeCoded'
        hash[:error_type_other] = error_type_other if has? 'ErrorTypeOther'
        hash[:error_code] = error_code if has? 'ErrorCode'
        hash[:error_description] = error_description if has? 'ErrorDescription'

        hash
      end
    end
  end
end