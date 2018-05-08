module MoneyS3
  module Builders
    class MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Status', data[:status]) if data.key? :status
        if data.key? :reference
          element = Ox::Element.new('Reference')
          data[:reference].map { |i| Ox::Element.new('ID') << i }.each { |i| element << i }
          root << element
        end
        if data.key? :error_info
          data[:error_info].each { |i| root << ErrorInfoType.new('ErrorInfo', i).builder }
        end

        root
      end
    end
  end
end