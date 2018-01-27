require 'money_s3/base_element'
require 'money_s3/eet_type'

module MoneyS3
  class DoklRefType
    include BaseElement

    def id_dokladu
      at :IDDokladu
    end

    def cislo_dokladu
      at :CisloDokladu
    end

    def druh_dokladu
      at :DruhDokladu
    end

    def rok
      at :Rok
    end

    def eet
      element_xml = at :EET

      EETType.new(element_xml) if element_xml
    end
  end
end
