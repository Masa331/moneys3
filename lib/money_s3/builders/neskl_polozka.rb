require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'

module MoneyS3
  module Builders
    class NesklPolozka
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :mj
          element = Ox::Element.new('MJ')
          element << attributes[:mj] if attributes[:mj]
          root << element
        end

        if attributes.key? :uziv_code
          element = Ox::Element.new('UzivCode')
          element << attributes[:uziv_code] if attributes[:uziv_code]
          root << element
        end

        if attributes.key? :katalog
          element = Ox::Element.new('Katalog')
          element << attributes[:katalog] if attributes[:katalog]
          root << element
        end

        if attributes.key? :bar_code
          element = Ox::Element.new('BarCode')
          element << attributes[:bar_code] if attributes[:bar_code]
          root << element
        end

        if attributes.key? :zaloha
          element = Ox::Element.new('Zaloha')
          element << attributes[:zaloha] if attributes[:zaloha]
          root << element
        end

        if attributes.key? :zdan_zaloha
          element = Ox::Element.new('ZdanZaloha')
          element << attributes[:zdan_zaloha] if attributes[:zdan_zaloha]
          root << element
        end

        if attributes.key? :konec_odpocet
          element = Ox::Element.new('KonecOdpocet')
          element << attributes[:konec_odpocet] if attributes[:konec_odpocet]
          root << element
        end

        if attributes.key? :typ_zar_doby
          element = Ox::Element.new('TypZarDoby')
          element << attributes[:typ_zar_doby] if attributes[:typ_zar_doby]
          root << element
        end

        if attributes.key? :zar_doba
          element = Ox::Element.new('ZarDoba')
          element << attributes[:zar_doba] if attributes[:zar_doba]
          root << element
        end

        if attributes.key? :protizapis
          element = Ox::Element.new('Protizapis')
          element << attributes[:protizapis] if attributes[:protizapis]
          root << element
        end

        if attributes.key? :plneno_dph
          element = Ox::Element.new('PlnenoDPH')
          element << attributes[:plneno_dph] if attributes[:plneno_dph]
          root << element
        end

        if attributes.key? :hmotnost
          element = Ox::Element.new('Hmotnost')
          element << attributes[:hmotnost] if attributes[:hmotnost]
          root << element
        end

        if attributes.key? :vyrobni_cis
          element = Ox::Element.new('VyrobniCis')
          element << attributes[:vyrobni_cis] if attributes[:vyrobni_cis]
          root << element
        end

        if attributes.key? :dat_exp
          element = Ox::Element.new('DatExp')
          element << attributes[:dat_exp] if attributes[:dat_exp]
          root << element
        end

        if attributes.key? :dat_nakupu
          element = Ox::Element.new('DatNakupu')
          element << attributes[:dat_nakupu] if attributes[:dat_nakupu]
          root << element
        end

        if attributes.key? :predm_pln
          element = Ox::Element.new('PredmPln')
          element << attributes[:predm_pln] if attributes[:predm_pln]
          root << element
        end

        if attributes.key? :dodavatel
          root << FirmaType.new(attributes[:dodavatel], 'Dodavatel').builder
        end

        root
      end
    end
  end
end