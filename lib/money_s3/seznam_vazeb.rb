require 'money_s3/base_element'
require 'money_s3/vazba_type'

module MoneyS3
  class SeznamVazeb
    include BaseElement

    def vazba
      submodel_at(VazbaType, :Vazba)
    end

    def to_h
      { vazba: vazba.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
