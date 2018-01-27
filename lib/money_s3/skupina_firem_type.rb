require 'money_s3/base_element'

module MoneyS3
  class SkupinaFiremType
    include BaseElement

    def zkratka
      at :Zkratka
    end

    def nazev
      at :Nazev
    end

    def poznamka
      at :Poznamka
    end
  end
end
