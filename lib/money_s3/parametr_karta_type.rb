require 'money_s3/base_element'
require 'money_s3/parametr_type'

module MoneyS3
  class ParametrKartaType
    include BaseElement

    def poradi
      at :Poradi
    end

    def value
      at :Value
    end

    def parametr
      submodel_at(ParametrType, :Parametr)
    end
  end
end
