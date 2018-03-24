require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class DodavkaType
      include BaseParser

      def oznaceni
        at :Oznaceni
      end

      def dat_exp
        at :DatExp
      end

      def pocet_mj
        at :PocetMJ
      end

      def cena
        at :Cena
      end

      def to_h
        hash = {}

        hash[:oznaceni] = oznaceni if raw.key? :Oznaceni
        hash[:dat_exp] = dat_exp if raw.key? :DatExp
        hash[:pocet_mj] = pocet_mj if raw.key? :PocetMJ
        hash[:cena] = cena if raw.key? :Cena

        hash
      end
    end
  end
end