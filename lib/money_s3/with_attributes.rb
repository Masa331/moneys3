module MoneyS3
  class WithAttributes < SimpleDelegator
    def attributes
      @attributes ||= {}
    end

    def attributes=(attributes)
      @attributes = attributes
    end
  end
end
