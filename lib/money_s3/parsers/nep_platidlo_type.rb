require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class NepPlatidloType
      include BaseParser

      def kod
        at :Kod
      end

      def popis
        at :Popis
      end

      def var_symb
        at :VarSymb
      end

      def to_h
        hash = {}

        hash[:kod] = kod if raw.key? :Kod
        hash[:popis] = popis if raw.key? :Popis
        hash[:var_symb] = var_symb if raw.key? :VarSymb

        hash
      end
    end
  end
end