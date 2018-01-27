require 'money_s3/base_element'
require 'money_s3/mena_type'

module MoneyS3
  class ValutyHraz
    include BaseElement

    def castka
      at :Castka
    end

    def mena
      element_xml = at :Mena

      MenaType.new(element_xml) if element_xml
    end
  end
end
