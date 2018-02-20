require 'money_s3/base_element'
require 'money_s3/id'

module MoneyS3
  class ReferenceType
    include BaseElement

    def id
      submodel_at(ID, :ID)
    end

    def to_h
      { id: id.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
