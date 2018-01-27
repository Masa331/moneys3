require 'money_s3/base_element'
require 'money_s3/parametr_karta_type'

module MoneyS3
  class SeznamParametruKarty
    include BaseElement

    def parametr_karty
      element_xml = at :ParametrKarty

      ParametrKartaType.new(element_xml) if element_xml
    end
  end
end
