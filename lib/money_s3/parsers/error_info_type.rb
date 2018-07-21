module MoneyS3
  module Parsers
    class ErrorInfoType
      include ParserCore::BaseParser

      def error_type_coded
        at 'ErrorTypeCoded'
      end

      def error_type_coded_attributes
        attributes_at 'ErrorTypeCoded'
      end

      def error_type_other
        at 'ErrorTypeOther'
      end

      def error_type_other_attributes
        attributes_at 'ErrorTypeOther'
      end

      def error_code
        at 'ErrorCode'
      end

      def error_code_attributes
        attributes_at 'ErrorCode'
      end

      def error_description
        at 'ErrorDescription'
      end

      def error_description_attributes
        attributes_at 'ErrorDescription'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:error_type_coded] = error_type_coded if has? 'ErrorTypeCoded'
        hash[:error_type_coded_attributes] = error_type_coded_attributes if has? 'ErrorTypeCoded'
        hash[:error_type_other] = error_type_other if has? 'ErrorTypeOther'
        hash[:error_type_other_attributes] = error_type_other_attributes if has? 'ErrorTypeOther'
        hash[:error_code] = error_code if has? 'ErrorCode'
        hash[:error_code_attributes] = error_code_attributes if has? 'ErrorCode'
        hash[:error_description] = error_description if has? 'ErrorDescription'
        hash[:error_description_attributes] = error_description_attributes if has? 'ErrorDescription'

        hash
      end
    end
  end
end