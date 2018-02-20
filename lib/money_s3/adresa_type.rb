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

    def to_h
      { ulice: ulice,
        misto: misto,
        psc: psc,
        stat: stat,
        kod_statu: kod_statu
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
