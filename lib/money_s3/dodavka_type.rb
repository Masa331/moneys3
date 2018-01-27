require 'money_s3/base_element'

module MoneyS3
  class DodavkaType
    include BaseElement

    def oznaceni
      at :Oznaceni
    end

    def dat_exp
      at :DatExp
    end

    def pocet_mj
      at :PocetMJ
    end

    def cena
      at :Cena
    end
  end
end
