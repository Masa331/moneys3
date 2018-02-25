require 'money_s3/base_element'
require 'money_s3/message_type'

module MoneyS3
  class MsgPolozType
    include BaseElement

    def km_karta
      submodel_at(MessageType, :KmKarta)
    end

    def sklad
      submodel_at(MessageType, :Sklad)
    end

    def to_h
      { km_karta: km_karta.to_h,
        sklad: sklad.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
