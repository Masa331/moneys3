require 'money_s3/base_element'
require 'money_s3/valuty'

module MoneyS3
  class SouhrnDPHPolType
    include BaseElement

    def zaklad_mj
      at :Zaklad_MJ
    end

    def dph_mj
      at :DPH_MJ
    end

    def zaklad
      at :Zaklad
    end

    def dph
      at :DPH
    end

    def valuty
      submodel_at(Valuty, :Valuty)
    end

    def to_h
      { zaklad_mj: zaklad_mj,
        dph_mj: dph_mj,
        zaklad: zaklad,
        dph: dph,
        valuty: valuty.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
