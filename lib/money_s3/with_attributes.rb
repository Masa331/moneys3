module MoneyS3
  class WithAttributes < SimpleDelegator
    alias_method :value, :__getobj__

    def attributes
      @attributes ||= {}
    end

    def attributes=(attributes)
      @attributes = attributes
    end
  end
end
