require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ErrorInfoType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :error_type_coded
          element = Ox::Element.new('ErrorTypeCoded')
          element << attributes[:error_type_coded] if attributes[:error_type_coded]
          root << element
        end

        if attributes.key? :error_type_other
          element = Ox::Element.new('ErrorTypeOther')
          element << attributes[:error_type_other] if attributes[:error_type_other]
          root << element
        end

        if attributes.key? :error_code
          element = Ox::Element.new('ErrorCode')
          element << attributes[:error_code] if attributes[:error_code]
          root << element
        end

        if attributes.key? :error_description
          element = Ox::Element.new('ErrorDescription')
          element << attributes[:error_description] if attributes[:error_description]
          root << element
        end

        root
      end
    end
  end
end