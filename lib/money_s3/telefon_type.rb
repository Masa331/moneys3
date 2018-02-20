require 'money_s3/base_element'

module MoneyS3
  class TelefonType
    include BaseElement

    def pred
      at :Pred
    end

    def cislo
      at :Cislo
    end

    def klap
      at :Klap
    end

    def to_h
      { pred: pred,
        cislo: cislo,
        klap: klap
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
