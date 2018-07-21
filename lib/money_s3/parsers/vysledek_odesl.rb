module MoneyS3
  module Parsers
    class VysledekOdesl
      include ParserCore::BaseParser

      def chyba
        at 'Chyba'
      end

      def chyba_attributes
        attributes_at 'Chyba'
      end

      def varovani
        array_of_at(String, ['Varovani'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:chyba] = chyba if has? 'Chyba'
        hash[:chyba_attributes] = chyba_attributes if has? 'Chyba'
        hash[:varovani] = varovani if has? 'Varovani'

        hash
      end
    end
  end
end