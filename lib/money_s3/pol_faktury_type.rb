require 'money_s3/base_element'
require 'money_s3/souhrn_dph_pol_type'
require 'money_s3/neskl_polozka'
require 'money_s3/pol_skl_dokl_type'
require 'money_s3/seznam_vazeb'

module MoneyS3
  class PolFakturyType
    include BaseElement

    def popis
      at :Popis
    end

    def poznamka
      at :Poznamka
    end

    def pocet_mj
      at :PocetMJ
    end

    def sazba_dph
      at :SazbaDPH
    end

    def cena
      at :Cena
    end

    def cena_typ
      at :CenaTyp
    end

    def sleva
      at :Sleva
    end

    def cinnost
      at :Cinnost
    end

    def poradi
      at :Poradi
    end

    def kod_dph
      at :KodDPH
    end

    def stredisko
      at :Stredisko
    end

    def zakazka
      at :Zakazka
    end

    def predkontac
      at :Predkontac
    end

    def valuty
      at :Valuty
    end

    def cena_po_sleve
      at :CenaPoSleve
    end

    def zvl_rezim
      at :ZvlRezim
    end

    def zvl_dph
      at :ZvlDPH
    end

    def rezim_eet
      at :RezimEET
    end

    def souhrn_dph
      submodel_at(SouhrnDPHPolType, :SouhrnDPH)
    end

    def neskl_polozka
      submodel_at(NesklPolozka, :NesklPolozka)
    end

    def skl_polozka
      submodel_at(PolSklDoklType, :SklPolozka)
    end

    def seznam_vazeb
      submodel_at(SeznamVazeb, :SeznamVazeb)
    end
  end
end
