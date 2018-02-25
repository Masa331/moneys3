require 'money_s3/base_element'
require 'money_s3/msg_poloz_type'

module MoneyS3
  class MsgFaktPolozType
    include BaseElement

    def skl_polozka
      submodel_at(MsgPolozType, :SklPolozka)
    end

    def to_h
      { skl_polozka: skl_polozka.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
