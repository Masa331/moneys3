require 'money_s3/base_element'
require 'money_s3/dokl_ref_type'

module MoneyS3
  class KurzRozd
    include BaseElement

    def typ
      at :Typ
    end

    def preceneni
      at :Preceneni
    end

    def castka
      at :Castka
    end

    def kr_poradi
      at :KRPoradi
    end

    def doklad
      submodel_at(DoklRefType, :Doklad)
    end

    def to_h
      { typ: typ,
        preceneni: preceneni,
        castka: castka,
        kr_poradi: kr_poradi,
        doklad: doklad.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
