module MoneyS3
  module Builders
    module BaseBuilder
      attr_accessor :name, :data, :options

      def initialize(name, data = {}, options = {})
        @name = name
        @data = data || {}
        @options = options || {}
      end

      def to_xml
        encoding = options[:encoding]

        doc_options = { version: '1.0' }
        doc_options[:encoding] = encoding if encoding
        doc = Ox::Document.new(doc_options)
        doc << builder

        dump_options = { with_xml: true }
        dump_options[:encoding] = encoding if encoding
        Ox.dump(doc, dump_options)
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