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

    def to_h
      { kod: kod,
        mnozstvi: mnozstvi,
        kurs: kurs
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
