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
      submodel_at(Castky, :Castky)
    end

    def vysledek_odesl
      submodel_at(VysledekOdesl, :VysledekOdesl)
    end

    def to_h
      { eet_odesl: eet_odesl,
        prod_misto: prod_misto,
        uuid: uuid,
        dat_odesl: dat_odesl,
        cas_odesl: cas_odesl,
        prvni_zasl: prvni_zasl,
        dic_popl: dic_popl,
        dic_pover: dic_pover,
        provozovna: provozovna,
        pokl_zariz: pokl_zariz,
        porad_cis: porad_cis,
        dat_trzby: dat_trzby,
        cas_trzby: cas_trzby,
        rezim: rezim,
        pkp: pkp,
        bkp: bkp,
        fik: fik,
        cert_pkp: cert_pkp,
        cert_eet: cert_eet,
        castky: castky.to_h,
        vysledek_odesl: vysledek_odesl.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
