require 'money_s3/base_element'

module MoneyS3
  class AdresaType
    include BaseElement

    def ulice
      at :Ulice
    end

    def misto
      at :Misto
    end

    def psc
      at :PSC
    end

    def stat
      at :Stat
    end

    def kod_statu
      at :KodStatu
    end
  end
end
