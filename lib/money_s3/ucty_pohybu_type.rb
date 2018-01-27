require 'money_s3/base_element'

module MoneyS3
  class UctyPohybuType
    include BaseElement

    def uc_prodejk
      at :UcProdejk
    end

    def uc_prijemk
      at :UcPrijemk
    end

    def uc_vydejky
      at :UcVydejky
    end

    def uc_vyrobky
      at :UcVyrobky
    end

    def uc_v_dod_lst
      at :UcVDodLst
    end

    def uc_p_dod_lst
      at :UcPDodLst
    end

    def uc_manko
      at :UcManko
    end

    def uc_preb
      at :UcPreb
    end
  end
end
