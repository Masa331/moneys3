module MoneyS3
  module BaseElement
    EMPTY_ARRAY = []

    attr_accessor :raw

    def initialize(raw)
      @raw = raw
    end

    private

    def at(locator)
      return nil if raw.nil?

      raw[locator]
    end

    def submodel_at(klass, locator)
      element_xml = at locator

      klass.new(element_xml) if element_xml
    end

    def array_of_at(klass, locator)
      elements = raw.dig(*locator) || []
      if elements.is_a?(Hash) || elements.is_a?(String)
        elements = [elements]
      end

      elements.map do |raw|
        klass.new(raw)
      end
    end

    def all(locator)
      return [] if raw.nil?

      result = raw[locator]

      if result.is_a? Hash
        [result]
      elsif result.is_a? Array
        result
      else
        EMPTY_ARRAY
      end
    end
  end
end
