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
  end
end
