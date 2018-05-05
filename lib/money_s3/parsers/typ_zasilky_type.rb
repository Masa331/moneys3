module MoneyS3
  module Parsers
    class TypZasilkyType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def poznamka
        at 'Poznamka'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:poznamka] = poznamka if has? 'Poznamka'

        hash
      end
    end
  end
end