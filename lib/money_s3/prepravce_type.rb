require 'money_s3/base_element'

module MoneyS3
  class PrepravceType
    include BaseElement

    def zkrat
      at :Zkrat
    end

    def nazev
      at :Nazev
    end

    def poznamka
      at :Poznamka
    end

    def kod_odesil
      at :KodOdesil
    end
  end
end
