module MoneyS3
  module Parsers
    class NesklPolozka2
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def mj
        at 'MJ'
      end

      def mj_attributes
        attributes_at 'MJ'
      end

      def uziv_code
        at 'UzivCode'
      end

      def uziv_code_attributes
        attributes_at 'UzivCode'
      end

      def katalog
        at 'Katalog'
      end

      def katalog_attributes
        attributes_at 'Katalog'
      end

      def bar_code
        at 'BarCode'
      end

      def bar_code_attributes
        attributes_at 'BarCode'
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

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:mj] = mj if has? 'MJ'
        hash[:mj_attributes] = mj_attributes if has? 'MJ'
        hash[:uziv_code] = uziv_code if has? 'UzivCode'
        hash[:uziv_code_attributes] = uziv_code_attributes if has? 'UzivCode'
        hash[:katalog] = katalog if has? 'Katalog'
        hash[:katalog_attributes] = katalog_attributes if has? 'Katalog'
        hash[:bar_code] = bar_code if has? 'BarCode'
        hash[:bar_code_attributes] = bar_code_attributes if has? 'BarCode'
        hash[:typ_zar_doby] = typ_zar_doby if has? 'TypZarDoby'
        hash[:typ_zar_doby_attributes] = typ_zar_doby_attributes if has? 'TypZarDoby'
        hash[:zar_doba] = zar_doba if has? 'ZarDoba'
        hash[:zar_doba_attributes] = zar_doba_attributes if has? 'ZarDoba'
        hash[:vyrobni_cis] = vyrobni_cis if has? 'VyrobniCis'
        hash[:vyrobni_cis_attributes] = vyrobni_cis_attributes if has? 'VyrobniCis'
        hash[:dat_exp] = dat_exp if has? 'DatExp'
        hash[:dat_exp_attributes] = dat_exp_attributes if has? 'DatExp'
        hash[:dat_nakupu] = dat_nakupu if has? 'DatNakupu'
        hash[:dat_nakupu_attributes] = dat_nakupu_attributes if has? 'DatNakupu'
        hash[:dodavatel] = dodavatel.to_h if has? 'Dodavatel'

        hash
      end
    end
  end
end