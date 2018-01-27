require 'money_s3/base_element'
require 'money_s3/vyrobni_cislo_type'

module MoneyS3
  class SeznamVC
    include BaseElement

    def vyrobni_cislo
      element_xml = at :VyrobniCislo

      VyrobniCisloType.new(element_xml) if element_xml
    end
  end
end
