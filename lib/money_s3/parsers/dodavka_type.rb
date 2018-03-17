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
        { oznaceni: oznaceni,
          dat_exp: dat_exp,
          pocet_mj: pocet_mj,
          cena: cena
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end