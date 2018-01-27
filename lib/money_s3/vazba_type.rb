require 'money_s3/base_element'
require 'money_s3/doklad'

module MoneyS3
  class VazbaType
    include BaseElement

    def typ
      at :Typ
    end

    def pod_typ
      at :PodTyp
    end

    def doklad
      element_xml = at :Doklad

      Doklad.new(element_xml) if element_xml
    end
  end
end
