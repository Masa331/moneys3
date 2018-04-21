module MoneyS3
  module Builders
    class NesklPolozka
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('MJ', data[:mj]) if data.key? :mj
        root << build_element('UzivCode', data[:uziv_code]) if data.key? :uziv_code
        root << build_element('Katalog', data[:katalog]) if data.key? :katalog
        root << build_element('BarCode', data[:bar_code]) if data.key? :bar_code
        root << build_element('Zaloha', data[:zaloha]) if data.key? :zaloha
        root << build_element('ZdanZaloha', data[:zdan_zaloha]) if data.key? :zdan_zaloha
        root << build_element('KonecOdpocet', data[:konec_odpocet]) if data.key? :konec_odpocet
        root << build_element('TypZarDoby', data[:typ_zar_doby]) if data.key? :typ_zar_doby
        root << build_element('ZarDoba', data[:zar_doba]) if data.key? :zar_doba
        root << build_element('Protizapis', data[:protizapis]) if data.key? :protizapis
        root << build_element('PlnenoDPH', data[:plneno_dph]) if data.key? :plneno_dph
        root << build_element('Hmotnost', data[:hmotnost]) if data.key? :hmotnost
        root << build_element('VyrobniCis', data[:vyrobni_cis]) if data.key? :vyrobni_cis
        root << build_element('DatExp', data[:dat_exp]) if data.key? :dat_exp
        root << build_element('DatNakupu', data[:dat_nakupu]) if data.key? :dat_nakupu
        if data.key? :dodavatel
          root << FirmaType.new('Dodavatel', data[:dodavatel]).builder
        end
        root << build_element('PredmPln', data[:predm_pln]) if data.key? :predm_pln

        root
      end
    end
  end
end