module MoneyS3
  class HashWithAttributes
    def initialize(hash, attributes = nil)
      @hash = hash
      @attributes = attributes if attributes
    end

    def value
      @hash
    end

    def attributes
      @attributes ||= {}
    end

    def attributes=(attributes)
      @attributes = attributes
    end

    def ==(other)
      if other.respond_to? :attributes
        value == other && other.attributes == attributes
      else
        value == other
      end
    end

    def key?(key)
      value.key? key
    end

    def [](key)
      value[key]
    end

    def []=(key, key_value)
      value[key] = key_value
    end
  end
end
