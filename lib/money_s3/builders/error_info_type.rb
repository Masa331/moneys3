require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ErrorInfoType
      include BaseBuilder

      attr_accessor :error_type_coded, :error_type_other, :error_code, :error_description

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('ErrorTypeCoded') << error_type_coded) if error_type_coded
        root << (Ox::Element.new('ErrorTypeOther') << error_type_other) if error_type_other
        root << (Ox::Element.new('ErrorCode') << error_code) if error_code
        root << (Ox::Element.new('ErrorDescription') << error_description) if error_description

        root
      end
    end
  end
end