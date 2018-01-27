require 'money_s3/base_element'

module MoneyS3
  class VlajkaType
    include BaseElement

    def id_user
      at :IDUser
    end

    def name_user
      at :NameUser
    end

    def id_flag
      at :IDFlag
    end

    def title
      at :Title
    end

    def enabled
      at :Enabled
    end

    def remark
      at :Remark
    end

    def rf_width
      at :RFWidth
    end

    def rf_height
      at :RFHeight
    end
  end
end
