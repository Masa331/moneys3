require 'money_s3/base_element'
require 'money_s3/pol_objedn_type'

module MoneyS3
  class SubPolObjType
    include BaseElement

    def mj_na_sadu
      at :MJNaSadu
    end

    def polozka
      submodel_at(PolObjednType, :Polozka)
    end

    def to_h
      { mj_na_sadu: mj_na_sadu,
        polozka: polozka.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
