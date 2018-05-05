module MoneyS3
  module Parsers
    class NesklPolozka2
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def mj
        at 'MJ'
      end

      def uziv_code
        at 'UzivCode'
      end

      def katalog
        at 'Katalog'
      end

      def bar_code
        at 'BarCode'
      end

      def typ_zar_doby
        at 'TypZarDoby'
      end

      def zar_doba
        at 'ZarDoba'
      end

      def vyrobni_cis
        at 'VyrobniCis'
      end

      def dat_exp
        at 'DatExp'
      end

      def dat_nakupu
        at 'DatNakupu'
      end

      def dodavatel
        submodel_at(FirmaType, 'Dodavatel')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:mj] = mj if has? 'MJ'
        hash[:uziv_code] = uziv_code if has? 'UzivCode'
        hash[:katalog] = katalog if has? 'Katalog'
        hash[:bar_code] = bar_code if has? 'BarCode'
        hash[:typ_zar_doby] = typ_zar_doby if has? 'TypZarDoby'
        hash[:zar_doba] = zar_doba if has? 'ZarDoba'
        hash[:vyrobni_cis] = vyrobni_cis if has? 'VyrobniCis'
        hash[:dat_exp] = dat_exp if has? 'DatExp'
        hash[:dat_nakupu] = dat_nakupu if has? 'DatNakupu'
        hash[:dodavatel] = dodavatel.to_h_with_attrs if has? 'Dodavatel'

        hash
      end
    end
  end
end