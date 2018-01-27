require 'money_s3/base_element'
require 'money_s3/mena_type'
require 'money_s3/souhrn_dph_type'

module MoneyS3
  class Valuty
    include BaseElement

    def celkem
      at :Celkem
    end

    def mena
      element_xml = at :Mena

      MenaType.new(element_xml) if element_xml
    end

    def souhrn_dph
      element_xml = at :SouhrnDPH

      SouhrnDPHType.new(element_xml) if element_xml
    end
  end
end
