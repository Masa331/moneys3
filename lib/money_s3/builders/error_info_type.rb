module MoneyS3
  module Builders
    class ErrorInfoType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('ErrorTypeCoded', data[:error_type_coded]) if data.key? :error_type_coded
        root << build_element('ErrorTypeOther', data[:error_type_other]) if data.key? :error_type_other
        root << build_element('ErrorCode', data[:error_code]) if data.key? :error_code
        root << build_element('ErrorDescription', data[:error_description]) if data.key? :error_description

        root
      end
    end
  end
end