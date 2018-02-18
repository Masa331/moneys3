require 'money_s3/base_element'
require 'money_s3/mena_type'
require 'money_s3/souhrn_dph_type'

module MoneyS3
  class Valuty
    include BaseElement

    def celkem
      at :Celkem
    end

    def mena
      submodel_at(MenaType, :Mena)
    end

    def souhrn_dph
      submodel_at(SouhrnDPHType, :SouhrnDPH)
    end
  end
end
