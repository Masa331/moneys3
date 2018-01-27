require 'money_s3/base_element'
require 'money_s3/dokl_ref_type'
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
      element_xml = at :DokladUhr

      DoklRefType.new(element_xml) if element_xml
    end

    def doklad_hraz
      element_xml = at :DokladHraz

      DoklRefType.new(element_xml) if element_xml
    end

    def valuty_hraz
      element_xml = at :ValutyHraz

      ValutyHraz.new(element_xml) if element_xml
    end

    def valuty_uhr
      element_xml = at :ValutyUhr

      ValutyUhr.new(element_xml) if element_xml
    end

    def kurz_rozd
      element_xml = at :KurzRozd

      KurzRozd.new(element_xml) if element_xml
    end

    def seznam_pd_uhrad
      # element_xml = at :SeznamPDUhrad
      #
      # SeznamPDUhrad.new(element_xml) if element_xml

      elements = raw[:SeznamPDUhrad]
      if elements.is_a? Hash
        elements = [elements]
      end

      elements.map do |raw|
        UhradaPduhrada.new(raw[:Uhrada_PDUhrada])
      end
    end
  end
end
