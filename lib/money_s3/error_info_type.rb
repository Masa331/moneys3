require 'money_s3/base_element'

module MoneyS3
  class ErrorInfoType
    include BaseElement

    def error_type_coded
      at :ErrorTypeCoded
    end

    def error_type_other
      at :ErrorTypeOther
    end

    def error_code
      at :ErrorCode
    end

    def error_description
      at :ErrorDescription
    end

    def to_h
      { error_type_coded: error_type_coded,
        error_type_other: error_type_other,
        error_code: error_code,
        error_description: error_description
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
