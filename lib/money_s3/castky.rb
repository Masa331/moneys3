require 'money_s3/base_element'

module MoneyS3
  class Castky
    include BaseElement

    def celkem
      at :Celkem
    end

    def zaklad_0
      at :Zaklad_0
    end

    def zaklad_1
      at :Zaklad_1
    end

    def zaklad_2
      at :Zaklad_2
    end

    def zaklad_3
      at :Zaklad_3
    end

    def dph_1
      at :DPH_1
    end

    def dph_2
      at :DPH_2
    end

    def dph_3
      at :DPH_3
    end

    def cest_sluzba
      at :CestSluzba
    end

    def pouz_zb_1
      at :PouzZb_1
    end

    def pouz_zb_2
      at :PouzZb_2
    end

    def pouz_zb_3
      at :PouzZb_3
    end

    def urc_cerp_zct
      at :UrcCerpZct
    end

    def cerp_zuct
      at :CerpZuct
    end
  end
end
