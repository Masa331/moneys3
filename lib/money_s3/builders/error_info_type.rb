module MoneyS3
  module Builders
    class ErrorInfoType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('ErrorTypeCoded', data[:error_type_coded], data[:error_type_coded_attributes]) if data.key? :error_type_coded
        root << build_element('ErrorTypeOther', data[:error_type_other], data[:error_type_other_attributes]) if data.key? :error_type_other
        root << build_element('ErrorCode', data[:error_code], data[:error_code_attributes]) if data.key? :error_code
        root << build_element('ErrorDescription', data[:error_description], data[:error_description_attributes]) if data.key? :error_description

        root
      end
    end
  end
end