require 'money_s3/base_element'
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

    def to_h
      { global: global.to_h,
        user: user.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
