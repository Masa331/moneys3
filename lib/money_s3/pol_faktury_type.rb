require 'money_s3/base_element'
require 'money_s3/souhrn_dph_pol_type'
require 'money_s3/neskl_polozka'
require 'money_s3/pol_skl_dokl_type'

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
      element_xml = at :SouhrnDPH

      SouhrnDPHPolType.new(element_xml) if element_xml
    end

    def neskl_polozka
      element_xml = at :NesklPolozka

      NesklPolozka.new(element_xml) if element_xml
    end

    def skl_polozka
      element_xml = at :SklPolozka

      PolSklDoklType.new(element_xml) if element_xml
    end

    def seznam_vazeb
      elements = raw[:SeznamVazeb]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        VazbaType.new(raw[:Vazba])
      end
    end
  end
end
