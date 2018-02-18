require 'money_s3/base_element'
require 'money_s3/mena_type'

module MoneyS3
  class ValutyUhr
    include BaseElement

    def castka
      at :Castka
    end

    def mena
      submodel_at(MenaType, :Mena)
    end
  end
end
