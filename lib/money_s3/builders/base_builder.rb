module MoneyS3
  module Builders
    module BaseBuilder
      attr_accessor :element_name

      def initialize(attributes = {}, element_name)
        @element_name = element_name

        attributes ||= {}
        attributes.each do |key, value|
          send("#{key}=", value)
        end
      end

      def to_xml
        doc = Ox::Document.new(version: '1.0')
        doc << builder

        Ox.dump(doc, with_xml: true)
      end
    end
  end
end
