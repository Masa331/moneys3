require 'money_s3/base_element'
require 'money_s3/vlajka_type'
require 'money_s3/vlajka_type'

module MoneyS3
  class Vlajky
    include BaseElement

    def global
      submodel_at(VlajkaType, :Global)
    end

    def user
      submodel_at(VlajkaType, :User)
    end
  end
end
