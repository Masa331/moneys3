require 'money_s3/base_element'

module MoneyS3
  class DalsiSazba
    include BaseElement

    def popis
      at :Popis
    end

    def hladina_dph
      at :HladinaDPH
    end

    def sazba
      at :Sazba
    end

    def zaklad
      at :Zaklad
    end

    def dph
      at :DPH
    end

    def to_h
      { popis: popis,
        hladina_dph: hladina_dph,
        sazba: sazba,
        zaklad: zaklad,
        dph: dph
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
