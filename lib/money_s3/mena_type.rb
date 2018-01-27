require 'money_s3/base_element'

module MoneyS3
  class MenaType
    include BaseElement

    def kod
      at :Kod
    end

    def mnozstvi
      at :Mnozstvi
    end

    def kurs
      at :Kurs
    end
  end
end
