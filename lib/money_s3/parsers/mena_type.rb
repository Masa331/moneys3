module MoneyS3
  module Parsers
    class MenaType
      include ParserCore::BaseParser

      def kod
        at 'Kod'
      end

      def mnozstvi
        at 'Mnozstvi'
      end

      def kurs
        at 'Kurs'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:kod] = kod if has? 'Kod'
        hash[:mnozstvi] = mnozstvi if has? 'Mnozstvi'
        hash[:kurs] = kurs if has? 'Kurs'

        hash
      end
    end
  end
end