require 'money_s3/base_element'

module MoneyS3
  class StavZasobyType
    include BaseElement

    def zasoba
      at :Zasoba
    end

    def rezervace
      at :Rezervace
    end

    def objednano
      at :Objednano
    end
  end
end
