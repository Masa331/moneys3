require 'money_s3/base_element'

module MoneyS3
  class Eshop
    include BaseElement

    def in_export
      at :IN_Export
    end

    def in_changed
      at :IN_Changed
    end

    def in_fak_cis
      at :IN_FakCis
    end

    def in_req_stor
      at :IN_ReqStor
    end

    def in_yes_stor
      at :IN_YesStor
    end

    def in_shop_id
      at :IN_ShopID
    end

    def in_poznamk
      at :IN_Poznamk
    end
  end
end
