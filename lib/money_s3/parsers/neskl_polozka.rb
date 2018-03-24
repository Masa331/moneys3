require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/firma_type'

module MoneyS3
  module Parsers
    class NesklPolozka
      include BaseParser

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
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:mj] = mj if raw.key? :MJ
        hash[:uziv_code] = uziv_code if raw.key? :UzivCode
        hash[:katalog] = katalog if raw.key? :Katalog
        hash[:bar_code] = bar_code if raw.key? :BarCode
        hash[:zaloha] = zaloha if raw.key? :Zaloha
        hash[:zdan_zaloha] = zdan_zaloha if raw.key? :ZdanZaloha
        hash[:konec_odpocet] = konec_odpocet if raw.key? :KonecOdpocet
        hash[:typ_zar_doby] = typ_zar_doby if raw.key? :TypZarDoby
        hash[:zar_doba] = zar_doba if raw.key? :ZarDoba
        hash[:protizapis] = protizapis if raw.key? :Protizapis
        hash[:plneno_dph] = plneno_dph if raw.key? :PlnenoDPH
        hash[:hmotnost] = hmotnost if raw.key? :Hmotnost
        hash[:vyrobni_cis] = vyrobni_cis if raw.key? :VyrobniCis
        hash[:dat_exp] = dat_exp if raw.key? :DatExp
        hash[:dat_nakupu] = dat_nakupu if raw.key? :DatNakupu
        hash[:predm_pln] = predm_pln if raw.key? :PredmPln
        hash[:dodavatel] = dodavatel.to_h if raw.key? :Dodavatel

        hash
      end
    end
  end
end