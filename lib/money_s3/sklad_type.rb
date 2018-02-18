require 'money_s3/base_element'
require 'money_s3/ucty_pohybu_type'
require 'money_s3/ucty_pohybu_type'
require 'money_s3/ucty_pohybu_type'

module MoneyS3
  class SkladType
    include BaseElement

    def nazev
      at :Nazev
    end

    def kod_skladu
      at :KodSkladu
    end

    def guid
      at :GUID
    end

    def cenik_sklad
      at :CenikSklad
    end

    def platno_od
      at :PlatnoOd
    end

    def platno_do
      at :PlatnoDo
    end

    def minus
      at :Minus
    end

    def neupoz
      at :Neupoz
    end

    def vyber_cen
      at :Vyber_cen
    end

    def vyber_dod
      at :Vyber_dod
    end

    def zpusob
      at :Zpusob
    end

    def prod_ceny_d
      at :ProdCenyD
    end

    def prepocet
      at :Prepocet
    end

    def ceny
      at :Ceny
    end

    def uc_vyrobk_vv
      at :UcVyrobkVV
    end

    def prodejk_vz
      at :ProdejkVz
    end

    def v_dod_lst_vz
      at :VDodLstVz
    end

    def p_dod_lst_vz
      at :PDodLstVz
    end

    def uc_pohyb_m
      submodel_at(UctyPohybuType, :UcPohybM)
    end

    def uc_pohyb_z
      submodel_at(UctyPohybuType, :UcPohybZ)
    end

    def uc_pohyb_v
      submodel_at(UctyPohybuType, :UcPohybV)
    end
  end
end
