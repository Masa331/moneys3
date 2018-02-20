require 'money_s3/base_element'

module MoneyS3
  class TypZasilkyType
    include BaseElement

    def zkrat
      at :Zkrat
    end

    def popis
      at :Popis
    end

    def poznamka
      at :Poznamka
    end

    def to_h
      { zkrat: zkrat,
        popis: popis,
        poznamka: poznamka
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
