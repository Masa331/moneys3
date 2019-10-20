module MoneyS3
  module Parsers
    class NesklPolozka
      include ParserCore::BaseParser

      def mj
        at 'MJ'
      end

      def mj_attributes
        attributes_at 'MJ'
      end

      def katalog
        at 'Katalog'
      end

      def katalog_attributes
        attributes_at 'Katalog'
      end

      def zaloha
        at 'Zaloha'
      end

      def zaloha_attributes
        attributes_at 'Zaloha'
      end

      def zdan_zaloha
        at 'ZdanZaloha'
      end

      def zdan_zaloha_attributes
        attributes_at 'ZdanZaloha'
      end

      def typ_zar_doby
        at 'TypZarDoby'
      end

      def typ_zar_doby_attributes
        attributes_at 'TypZarDoby'
      end

      def zar_doba
        at 'ZarDoba'
      end

      def zar_doba_attributes
        attributes_at 'ZarDoba'
      end

      def protizapis
        at 'Protizapis'
      end

      def protizapis_attributes
        attributes_at 'Protizapis'
      end

      def bar_code
        at 'BarCode'
      end

      def bar_code_attributes
        attributes_at 'BarCode'
      end

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def uziv_code
        at 'UzivCode'
      end

      def uziv_code_attributes
        attributes_at 'UzivCode'
      end

      def hmotnost
        at 'Hmotnost'
      end

      def hmotnost_attributes
        attributes_at 'Hmotnost'
      end

      def plneno_dph
        at 'PlnenoDPH'
      end

      def plneno_dph_attributes
        attributes_at 'PlnenoDPH'
      end

      def konec_odpocet
        at 'KonecOdpocet'
      end

      def konec_odpocet_attributes
        attributes_at 'KonecOdpocet'
      end

      def vyrobni_cis
        at 'VyrobniCis'
      end

      def vyrobni_cis_attributes
        attributes_at 'VyrobniCis'
      end

      def dat_exp
        at 'DatExp'
      end

      def dat_exp_attributes
        attributes_at 'DatExp'
      end

      def dat_nakupu
        at 'DatNakupu'
      end

      def dat_nakupu_attributes
        attributes_at 'DatNakupu'
      end

      def dodavatel
        submodel_at(FirmaType, 'Dodavatel')
      end

      def predm_pln
        at 'PredmPln'
      end

      def predm_pln_attributes
        attributes_at 'PredmPln'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:mj] = mj if has? 'MJ'
        hash[:mj_attributes] = mj_attributes if has? 'MJ'
        hash[:katalog] = katalog if has? 'Katalog'
        hash[:katalog_attributes] = katalog_attributes if has? 'Katalog'
        hash[:zaloha] = zaloha if has? 'Zaloha'
        hash[:zaloha_attributes] = zaloha_attributes if has? 'Zaloha'
        hash[:zdan_zaloha] = zdan_zaloha if has? 'ZdanZaloha'
        hash[:zdan_zaloha_attributes] = zdan_zaloha_attributes if has? 'ZdanZaloha'
        hash[:typ_zar_doby] = typ_zar_doby if has? 'TypZarDoby'
        hash[:typ_zar_doby_attributes] = typ_zar_doby_attributes if has? 'TypZarDoby'
        hash[:zar_doba] = zar_doba if has? 'ZarDoba'
        hash[:zar_doba_attributes] = zar_doba_attributes if has? 'ZarDoba'
        hash[:protizapis] = protizapis if has? 'Protizapis'
        hash[:protizapis_attributes] = protizapis_attributes if has? 'Protizapis'
        hash[:bar_code] = bar_code if has? 'BarCode'
        hash[:bar_code_attributes] = bar_code_attributes if has? 'BarCode'
        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:uziv_code] = uziv_code if has? 'UzivCode'
        hash[:uziv_code_attributes] = uziv_code_attributes if has? 'UzivCode'
        hash[:hmotnost] = hmotnost if has? 'Hmotnost'
        hash[:hmotnost_attributes] = hmotnost_attributes if has? 'Hmotnost'
        hash[:plneno_dph] = plneno_dph if has? 'PlnenoDPH'
        hash[:plneno_dph_attributes] = plneno_dph_attributes if has? 'PlnenoDPH'
        hash[:konec_odpocet] = konec_odpocet if has? 'KonecOdpocet'
        hash[:konec_odpocet_attributes] = konec_odpocet_attributes if has? 'KonecOdpocet'
        hash[:vyrobni_cis] = vyrobni_cis if has? 'VyrobniCis'
        hash[:vyrobni_cis_attributes] = vyrobni_cis_attributes if has? 'VyrobniCis'
        hash[:dat_exp] = dat_exp if has? 'DatExp'
        hash[:dat_exp_attributes] = dat_exp_attributes if has? 'DatExp'
        hash[:dat_nakupu] = dat_nakupu if has? 'DatNakupu'
        hash[:dat_nakupu_attributes] = dat_nakupu_attributes if has? 'DatNakupu'
        hash[:dodavatel] = dodavatel.to_h if has? 'Dodavatel'
        hash[:predm_pln] = predm_pln if has? 'PredmPln'
        hash[:predm_pln_attributes] = predm_pln_attributes if has? 'PredmPln'

        hash
      end
    end
  end
end