require 'money_s3/base_element'
require 'money_s3/nep_platidlo_type'

module MoneyS3
  class NepPlatbaType
    include BaseElement

    def mnozstvi_mj
      at :MnozstviMJ
    end

    def castka
      at :Castka
    end

    def platidlo
      submodel_at(NepPlatidloType, :Platidlo)
    end

    def to_h
      { mnozstvi_mj: mnozstvi_mj,
        castka: castka,
        platidlo: platidlo.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
