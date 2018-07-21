module MoneyS3
  module Parsers
    class DodavkaType
      include ParserCore::BaseParser

      def oznaceni
        at 'Oznaceni'
      end

      def oznaceni_attributes
        attributes_at 'Oznaceni'
      end

      def dat_exp
        at 'DatExp'
      end

      def dat_exp_attributes
        attributes_at 'DatExp'
      end

      def pocet_mj
        at 'PocetMJ'
      end

      def pocet_mj_attributes
        attributes_at 'PocetMJ'
      end

      def cena
        at 'Cena'
      end

      def cena_attributes
        attributes_at 'Cena'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:oznaceni] = oznaceni if has? 'Oznaceni'
        hash[:oznaceni_attributes] = oznaceni_attributes if has? 'Oznaceni'
        hash[:dat_exp] = dat_exp if has? 'DatExp'
        hash[:dat_exp_attributes] = dat_exp_attributes if has? 'DatExp'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:pocet_mj_attributes] = pocet_mj_attributes if has? 'PocetMJ'
        hash[:cena] = cena if has? 'Cena'
        hash[:cena_attributes] = cena_attributes if has? 'Cena'

        hash
      end
    end
  end
end