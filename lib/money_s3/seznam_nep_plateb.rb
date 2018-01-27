require 'money_s3/base_element'
require 'money_s3/nep_platba_type'

module MoneyS3
  class SeznamNepPlateb
    include BaseElement

    def nep_platba
      element_xml = at :NepPlatba

      NepPlatbaType.new(element_xml) if element_xml
    end
  end
end
