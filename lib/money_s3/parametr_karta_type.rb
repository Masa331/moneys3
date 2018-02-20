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

    def to_h
      { poradi: poradi,
        value: value,
        parametr: parametr.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
