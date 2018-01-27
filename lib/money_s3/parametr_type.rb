require 'money_s3/base_element'

module MoneyS3
  class ParametrType
    include BaseElement

    def id
      at :ID
    end

    def nazev
      at :Nazev
    end

    def druh
      at :Druh
    end

    def typ
      at :Typ
    end

    def mj
      at :MJ
    end

    def uziv_code
      at :UzivCode
    end

    def hodnoty
      at :Hodnoty
    end
  end
end
