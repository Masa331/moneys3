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
      if other.respond_to?(:value) && other.respond_to?(:attributes)
        value == other.value && other.attributes == attributes
      else
        value == other
      end
    end

    def merge(other)
      merged_hash = value.merge other.value
      merged_attrs = attributes.merge other.attributes

      self.class.new(merged_hash, merged_attrs)
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

    def dig(*attrs)
      value.dig(*attrs)
    end
  end
end
