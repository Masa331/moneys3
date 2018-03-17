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
        { kod: kod,
          popis: popis,
          var_symb: var_symb
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end