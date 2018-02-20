require 'money_s3/base_element'
require 'money_s3/firma_type'

module MoneyS3
  class NesklPolozka
    include BaseElement

    def zkrat
      at :Zkrat
    end

    def mj
      at :MJ
    end

    def uziv_code
      at :UzivCode
    end

    def katalog
      at :Katalog
    end

    def bar_code
      at :BarCode
    end

    def zaloha
      at :Zaloha
    end

    def zdan_zaloha
      at :ZdanZaloha
    end

    def konec_odpocet
      at :KonecOdpocet
    end

    def typ_zar_doby
      at :TypZarDoby
    end

    def zar_doba
      at :ZarDoba
    end

    def protizapis
      at :Protizapis
    end

    def plneno_dph
      at :PlnenoDPH
    end

    def hmotnost
      at :Hmotnost
    end

    def vyrobni_cis
      at :VyrobniCis
    end

    def dat_exp
      at :DatExp
    end

    def dat_nakupu
      at :DatNakupu
    end

    def predm_pln
      at :PredmPln
    end

    def dodavatel
      submodel_at(FirmaType, :Dodavatel)
    end

    def to_h
      { zkrat: zkrat,
        mj: mj,
        uziv_code: uziv_code,
        katalog: katalog,
        bar_code: bar_code,
        zaloha: zaloha,
        zdan_zaloha: zdan_zaloha,
        konec_odpocet: konec_odpocet,
        typ_zar_doby: typ_zar_doby,
        zar_doba: zar_doba,
        protizapis: protizapis,
        plneno_dph: plneno_dph,
        hmotnost: hmotnost,
        vyrobni_cis: vyrobni_cis,
        dat_exp: dat_exp,
        dat_nakupu: dat_nakupu,
        predm_pln: predm_pln,
        dodavatel: dodavatel.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
