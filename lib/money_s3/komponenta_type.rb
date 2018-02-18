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
      submodel_at(StavZasobyType, :StavZasoby)
    end

    def km_karta
      submodel_at(KmKartaType, :KmKarta)
    end

    def sklad
      submodel_at(SkladType, :Sklad)
    end
  end
end
