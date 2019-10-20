module MoneyS3
  module Builders
    class MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Status', data[:status], data[:status_attributes]) if data.key? :status
        if data.key? :reference
          element = Ox::Element.new('Reference')
          data[:reference].map { |i| Ox::Element.new('ID') << i }.each { |i| element << i }
          root << element
        end
        if data.key? :error_info
          data[:error_info].each { |i| root << ErrorInfoType.new('ErrorInfo', i).builder }
        end
        root << build_element('Data', data[:data], data[:data_attributes]) if data.key? :data

        root
      end
    end
  end
end