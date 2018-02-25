require 'money_s3/base_element'
require 'money_s3/reference_type'
require 'money_s3/error_info_type'

module MoneyS3
  class MessageType
    include BaseElement

    def status
      at :Status
    end

    def reference
      submodel_at(ReferenceType, :Reference)
    end

    def error_info
      array_of_at(ErrorInfoType, [:ErrorInfo])
    end

    def to_h
      { status: status,
        reference: reference.to_h,
        error_info: error_info.map(&:to_h)
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
