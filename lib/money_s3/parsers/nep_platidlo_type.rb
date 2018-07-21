module MoneyS3
  module Parsers
    class NepPlatidloType
      include ParserCore::BaseParser

      def kod
        at 'Kod'
      end

      def kod_attributes
        attributes_at 'Kod'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def var_symb
        at 'VarSymb'
      end

      def var_symb_attributes
        attributes_at 'VarSymb'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:kod] = kod if has? 'Kod'
        hash[:kod_attributes] = kod_attributes if has? 'Kod'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:var_symb] = var_symb if has? 'VarSymb'
        hash[:var_symb_attributes] = var_symb_attributes if has? 'VarSymb'

        hash
      end
    end
  end
end