require 'money_s3/base_element'

module MoneyS3
  class ReferenceType
    include BaseElement

    def id
      array_of_at(String, [:ID])
    end

    def to_h
      { id: id
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
