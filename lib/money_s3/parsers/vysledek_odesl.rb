module MoneyS3
  module Parsers
    class VysledekOdesl
      include BaseParser

      def chyba
        at 'Chyba'
      end

      def varovani
        array_of_at(String, ['Varovani'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:chyba] = chyba if has? 'Chyba'
        hash[:varovani] = varovani if has? 'Varovani'

        hash
      end
    end
  end
end