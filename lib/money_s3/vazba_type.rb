require 'money_s3/base_element'
require 'money_s3/doklad'

module MoneyS3
  class VazbaType
    include BaseElement

    def typ
      at :Typ
    end

    def pod_typ
      at :PodTyp
    end

    def doklad
      submodel_at(Doklad, :Doklad)
    end
  end
end
