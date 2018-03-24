module MoneyS3
  module Builders
    module BaseBuilder
      attr_accessor :name, :data

      def initialize(name, data = {})
        @name = name
        @data = data || {}
      end

      def to_xml
        doc = Ox::Document.new(version: '1.0')
        doc << builder

        Ox.dump(doc, with_xml: true)
      end

      def build_element(name, content)
        element = Ox::Element.new(name)
        if content.respond_to? :attributes
          content.attributes.each { |k, v| element[k] = v }
        end

        if content.respond_to? :value
          element << content.value if content.value
        else
          element << content if content
        end
        element
      end
    end
  end
end
