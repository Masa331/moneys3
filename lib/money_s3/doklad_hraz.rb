require 'money_s3/base_element'
require 'money_s3/eet_type'

module MoneyS3
  class DokladHraz
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
      submodel_at(EETType, :EET)
    end
  end
end
