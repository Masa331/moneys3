require 'money_s3/base_element'
require 'money_s3/pol_skl_dokl_type'

module MoneyS3
  class DefSubPolType
    include BaseElement

    def mj_na_sadu
      at :MJNaSadu
    end

    def polozka
      submodel_at(PolSklDoklType, :Polozka)
    end
  end
end
