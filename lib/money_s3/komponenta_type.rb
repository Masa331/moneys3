require 'money_s3/base_element'
require 'money_s3/stav_zasoby_type'
require 'money_s3/km_karta_type'
require 'money_s3/sklad_type'

module MoneyS3
  class KomponentaType
    include BaseElement

    def poc_mj
      at :PocMJ
    end

    def stav_zasoby
      element_xml = at :StavZasoby

      StavZasobyType.new(element_xml) if element_xml
    end

    def km_karta
      element_xml = at :KmKarta

      KmKartaType.new(element_xml) if element_xml
    end

    def sklad
      element_xml = at :Sklad

      SkladType.new(element_xml) if element_xml
    end
  end
end
