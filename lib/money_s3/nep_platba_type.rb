require 'money_s3/base_element'
require 'money_s3/nep_platidlo_type'

module MoneyS3
  class NepPlatbaType
    include BaseElement

    def mnozstvi_mj
      at :MnozstviMJ
    end

    def castka
      at :Castka
    end

    def platidlo
      element_xml = at :Platidlo

      NepPlatidloType.new(element_xml) if element_xml
    end
  end
end
