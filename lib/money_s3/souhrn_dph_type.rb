require 'money_s3/base_element'
require 'money_s3/dalsi_sazba'

module MoneyS3
  class SouhrnDPHType
    include BaseElement

    def zaklad0
      at :Zaklad0
    end

    def zaklad5
      at :Zaklad5
    end

    def zaklad22
      at :Zaklad22
    end

    def dph5
      at :DPH5
    end

    def dph22
      at :DPH22
    end

    def seznam_dalsi_sazby
      elements = raw[:SeznamDalsiSazby]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        DalsiSazba.new(raw[:DalsiSazba])
      end
    end
  end
end
