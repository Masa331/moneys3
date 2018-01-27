require 'money_s3/base_element'

module MoneyS3
  class TypZasilkyType
    include BaseElement

    def zkrat
      at :Zkrat
    end

    def popis
      at :Popis
    end

    def poznamka
      at :Poznamka
    end
  end
end
