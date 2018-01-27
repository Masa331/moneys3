require 'money_s3/base_element'

module MoneyS3
  class NepPlatidloType
    include BaseElement

    def kod
      at :Kod
    end

    def popis
      at :Popis
    end

    def var_symb
      at :VarSymb
    end
  end
end
