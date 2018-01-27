require 'money_s3/base_element'

module MoneyS3
  class BankSpojeniType
    include BaseElement

    def ucet
      at :Ucet
    end

    def kod_banky
      at :KodBanky
    end

    def mena
      at :Mena
    end

    def ucel
      at :Ucel
    end
  end
end
