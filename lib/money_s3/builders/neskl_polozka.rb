module MoneyS3
  module Builders
    class NesklPolozka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('MJ', data[:mj], data[:mj_attributes]) if data.key? :mj
        root << build_element('Katalog', data[:katalog], data[:katalog_attributes]) if data.key? :katalog
        root << build_element('Zaloha', data[:zaloha], data[:zaloha_attributes]) if data.key? :zaloha
        root << build_element('ZdanZaloha', data[:zdan_zaloha], data[:zdan_zaloha_attributes]) if data.key? :zdan_zaloha
        root << build_element('TypZarDoby', data[:typ_zar_doby], data[:typ_zar_doby_attributes]) if data.key? :typ_zar_doby
        root << build_element('ZarDoba', data[:zar_doba], data[:zar_doba_attributes]) if data.key? :zar_doba
        root << build_element('Protizapis', data[:protizapis], data[:protizapis_attributes]) if data.key? :protizapis
        root << build_element('BarCode', data[:bar_code], data[:bar_code_attributes]) if data.key? :bar_code
        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('UzivCode', data[:uziv_code], data[:uziv_code_attributes]) if data.key? :uziv_code
        root << build_element('Hmotnost', data[:hmotnost], data[:hmotnost_attributes]) if data.key? :hmotnost
        root << build_element('PlnenoDPH', data[:plneno_dph], data[:plneno_dph_attributes]) if data.key? :plneno_dph
        root << build_element('KonecOdpocet', data[:konec_odpocet], data[:konec_odpocet_attributes]) if data.key? :konec_odpocet
        root << build_element('VyrobniCis', data[:vyrobni_cis], data[:vyrobni_cis_attributes]) if data.key? :vyrobni_cis
        root << build_element('DatExp', data[:dat_exp], data[:dat_exp_attributes]) if data.key? :dat_exp
        root << build_element('DatNakupu', data[:dat_nakupu], data[:dat_nakupu_attributes]) if data.key? :dat_nakupu
        if data.key? :dodavatel
          root << FirmaType.new('Dodavatel', data[:dodavatel]).builder
        end
        root << build_element('PredmPln', data[:predm_pln], data[:predm_pln_attributes]) if data.key? :predm_pln

        root
      end
    end
  end
end