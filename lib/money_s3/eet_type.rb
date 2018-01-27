require 'money_s3/base_element'
require 'money_s3/castky'
require 'money_s3/vysledek_odesl'

module MoneyS3
  class EETType
    include BaseElement

    def eet_odesl
      at :EETOdesl
    end

    def prod_misto
      at :ProdMisto
    end

    def uuid
      at :UUID
    end

    def dat_odesl
      at :DatOdesl
    end

    def cas_odesl
      at :CasOdesl
    end

    def prvni_zasl
      at :PrvniZasl
    end

    def dic_popl
      at :DICPopl
    end

    def dic_pover
      at :DICPover
    end

    def provozovna
      at :Provozovna
    end

    def pokl_zariz
      at :PoklZariz
    end

    def porad_cis
      at :PoradCis
    end

    def dat_trzby
      at :DatTrzby
    end

    def cas_trzby
      at :CasTrzby
    end

    def rezim
      at :Rezim
    end

    def pkp
      at :PKP
    end

    def bkp
      at :BKP
    end

    def fik
      at :FIK
    end

    def cert_pkp
      at :CertPKP
    end

    def cert_eet
      at :CertEET
    end

    def castky
      element_xml = at :Castky

      Castky.new(element_xml) if element_xml
    end

    def vysledek_odesl
      element_xml = at :VysledekOdesl

      VysledekOdesl.new(element_xml) if element_xml
    end
  end
end
