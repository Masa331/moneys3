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

    def to_h
      { uc_prodejk: uc_prodejk,
        uc_prijemk: uc_prijemk,
        uc_vydejky: uc_vydejky,
        uc_vyrobky: uc_vyrobky,
        uc_v_dod_lst: uc_v_dod_lst,
        uc_p_dod_lst: uc_p_dod_lst,
        uc_manko: uc_manko,
        uc_preb: uc_preb
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
