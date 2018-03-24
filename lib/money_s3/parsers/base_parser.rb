module MoneyS3
  module Parsers
    module BaseParser
      EMPTY_ARRAY = []

      attr_accessor :raw

      def initialize(raw)
        @raw = raw
      end

      def attributes
        raw.attributes
      end

      private

      def at(locator)
        return nil if raw.nil?

        element = raw.locate(locator.to_s).first

        if element
          text = WithAttributes.new(element.text)
          text.attributes = element.attributes
          text
        end
      end

      def has?(locator)
        raw.locate(locator).any?
      end

      def submodel_at(klass, locator)
        element_xml = raw.locate(locator).first

        klass.new(element_xml) if element_xml
      end

      def array_of_at(klass, locator)
        return EMPTY_ARRAY if raw.nil?

        elements = raw.locate([*locator].join('/'))

        elements.map do |element|
          klass.new(element)
        end
      end
    end
  end
end
