module MoneyS3
  module Builders
    class NesklPolozka2
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('MJ', data[:mj], data[:mj_attributes]) if data.key? :mj
        root << build_element('UzivCode', data[:uziv_code], data[:uziv_code_attributes]) if data.key? :uziv_code
        root << build_element('Katalog', data[:katalog], data[:katalog_attributes]) if data.key? :katalog
        root << build_element('BarCode', data[:bar_code], data[:bar_code_attributes]) if data.key? :bar_code
        root << build_element('TypZarDoby', data[:typ_zar_doby], data[:typ_zar_doby_attributes]) if data.key? :typ_zar_doby
        root << build_element('ZarDoba', data[:zar_doba], data[:zar_doba_attributes]) if data.key? :zar_doba
        root << build_element('VyrobniCis', data[:vyrobni_cis], data[:vyrobni_cis_attributes]) if data.key? :vyrobni_cis
        root << build_element('DatExp', data[:dat_exp], data[:dat_exp_attributes]) if data.key? :dat_exp
        root << build_element('DatNakupu', data[:dat_nakupu], data[:dat_nakupu_attributes]) if data.key? :dat_nakupu
        if data.key? :dodavatel
          root << FirmaType.new('Dodavatel', data[:dodavatel]).builder
        end

        root
      end
    end
  end
end