require 'money_s3/base_element'
require 'money_s3/dokl_ref_type'
require 'money_s3/doklad_hraz'
require 'money_s3/valuty_hraz'
require 'money_s3/valuty_uhr'
require 'money_s3/kurz_rozd'
require 'money_s3/uhrada_pduhrada'

module MoneyS3
  class UhradaType
    include BaseElement

    def prijem
      at :Prijem
    end

    def poradi
      at :Poradi
    end

    def rok_poradi
      at :RokPoradi
    end

    def datum
      at :Datum
    end

    def dat_upl_dph
      at :DatUplDPH
    end

    def castka
      at :Castka
    end

    def zpusob_uhr
      at :ZpusobUhr
    end

    def platidlo
      at :Platidlo
    end

    def doklad_uhr
      submodel_at(DoklRefType, :DokladUhr)
    end

    def doklad_hraz
      submodel_at(DokladHraz, :DokladHraz)
    end

    def valuty_hraz
      submodel_at(ValutyHraz, :ValutyHraz)
    end

    def valuty_uhr
      submodel_at(ValutyUhr, :ValutyUhr)
    end

    def kurz_rozd
      submodel_at(KurzRozd, :KurzRozd)
    end

    def seznam_pd_uhrad
      array_of_at(UhradaPduhrada, [:SeznamPDUhrad, :Uhrada_PDUhrada])
    end
  end
end
