require 'money_s3/base_element'
require 'money_s3/id'

module MoneyS3
  class ReferenceType
    include BaseElement

    def id
      submodel_at(ID, :ID)
    end
  end
end
