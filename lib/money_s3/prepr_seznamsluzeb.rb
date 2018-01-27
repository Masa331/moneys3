require 'money_s3/base_element'
require 'money_s3/prepr_dopln_udaj_type'

module MoneyS3
  class PreprSeznamsluzeb
    include BaseElement

    def prepr_sluzba
      element_xml = at :Prepr_Sluzba

      PreprDoplnUdajType.new(element_xml) if element_xml
    end
  end
end
