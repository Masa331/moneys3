require 'money_s3/base_element'
require 'money_s3/vazba_type'

module MoneyS3
  class SeznamVazeb
    include BaseElement

    def vazba
      submodel_at(VazbaType, :Vazba)
    end
  end
end
