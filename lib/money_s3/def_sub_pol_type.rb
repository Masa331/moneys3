require 'money_s3/base_element'
require 'money_s3/pol_skl_dokl_type'

module MoneyS3
  class DefSubPolType
    include BaseElement

    def mj_na_sadu
      at :MJNaSadu
    end

    def polozka
      element_xml = at :Polozka

      PolSklDoklType.new(element_xml) if element_xml
    end
  end
end
