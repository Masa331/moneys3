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
      element_xml = at :Parametr

      ParametrType.new(element_xml) if element_xml
    end
  end
end
