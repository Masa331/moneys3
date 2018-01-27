require 'money_s3/base_element'
require 'money_s3/valuty'

module MoneyS3
  class SouhrnDPHPolType
    include BaseElement

    def zaklad_mj
      at :Zaklad_MJ
    end

    def dph_mj
      at :DPH_MJ
    end

    def zaklad
      at :Zaklad
    end

    def dph
      at :DPH
    end

    def valuty
      element_xml = at :Valuty

      Valuty.new(element_xml) if element_xml
    end
  end
end
