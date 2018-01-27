require 'money_s3/base_element'

module MoneyS3
  class TelefonType
    include BaseElement

    def pred
      at :Pred
    end

    def cislo
      at :Cislo
    end

    def klap
      at :Klap
    end
  end
end
