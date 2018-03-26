require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class NepPlatidloType
      include BaseParser

      def kod
        at 'Kod'
      end

      def popis
        at 'Popis'
      end

      def var_symb
        at 'VarSymb'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:kod] = kod if has? 'Kod'
        hash[:popis] = popis if has? 'Popis'
        hash[:var_symb] = var_symb if has? 'VarSymb'

        hash
      end
    end
  end
end