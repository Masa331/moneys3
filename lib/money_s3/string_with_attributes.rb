module MoneyS3
  class StringWithAttributes
    def initialize(string, attributes = nil)
      @string = string
      @attributes = attributes if attributes
    end

    def value
      @string
    end

    def attributes
      @attributes ||= {}
    end

    def attributes=(attributes)
      @attributes = attributes
    end

    def ==(other)
      if other.respond_to?(:value) && other.respond_to?(:attributes)
        value == other.value && other.attributes == attributes
      else
        value == other
      end
    end
  end
end
