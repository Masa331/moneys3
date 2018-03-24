module MoneyS3
  module Builders
    module BaseBuilder
      attr_accessor :attributes, :element_name, :actual_attributes

      def initialize(attributes = {}, element_name)
        @element_name = element_name
        @attributes = attributes || {}
        @actual_attributes = attributes.delete(:_attributes) || {}
      end

      def to_xml
        doc = Ox::Document.new(version: '1.0')
        doc << builder

        Ox.dump(doc, with_xml: true)
      end
    end
  end
end