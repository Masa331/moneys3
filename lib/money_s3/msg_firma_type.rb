require 'money_s3/base_element'
require 'money_s3/firma_type'
require 'money_s3/message_type'

module MoneyS3
  class MsgFirmaType
    include BaseElement

    def data
      submodel_at(FirmaType, :Data)
    end

    def osoba
      array_of_at(MessageType, [:Osoba])
    end

    def to_h
      { data: data.to_h,
        osoba: osoba.map(&:to_h)
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
