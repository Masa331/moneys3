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

    def to_h
      { poc_mj: poc_mj,
        stav_zasoby: stav_zasoby.to_h,
        km_karta: km_karta.to_h,
        sklad: sklad.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
