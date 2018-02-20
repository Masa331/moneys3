require 'money_s3/base_element'
require 'money_s3/mena_type'

module MoneyS3
  class ValutyHraz
    include BaseElement

    def castka
      at :Castka
    end

    def mena
      submodel_at(MenaType, :Mena)
    end

    def to_h
      { castka: castka,
        mena: mena.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
