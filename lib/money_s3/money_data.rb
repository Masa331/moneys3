require 'money_s3/base_element'
require 'money_s3/faktura_type'

module MoneyS3
  class MoneyData
    include BaseElement

    def seznam_fakt_vyd
      elements = raw[:SeznamFaktVyd][:FaktVyd]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        MoneyS3::FakturaType.new(raw)
      end
    end

    def seznam_fakt_vyd_dpp
      elements = raw[:SeznamFaktVyd_DPP][:FaktVyd_DPP]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        MoneyS3::FakturaType.new(raw)
      end
    end
  end
end
