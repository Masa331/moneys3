require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class DodavkaType
      include BaseParser

      def oznaceni
        at 'Oznaceni'
      end

      def dat_exp
        at 'DatExp'
      end

      def pocet_mj
        at 'PocetMJ'
      end

      def cena
        at 'Cena'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:oznaceni] = oznaceni if has? 'Oznaceni'
        hash[:dat_exp] = dat_exp if has? 'DatExp'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:cena] = cena if has? 'Cena'

        hash
      end
    end
  end
end