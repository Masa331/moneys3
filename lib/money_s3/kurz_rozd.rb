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
  end
end
