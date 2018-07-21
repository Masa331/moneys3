module MoneyS3
  module Parsers
    class MenaType
      include ParserCore::BaseParser

      def kod
        at 'Kod'
      end

      def kod_attributes
        attributes_at 'Kod'
      end

      def mnozstvi
        at 'Mnozstvi'
      end

      def mnozstvi_attributes
        attributes_at 'Mnozstvi'
      end

      def kurs
        at 'Kurs'
      end

      def kurs_attributes
        attributes_at 'Kurs'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:kod] = kod if has? 'Kod'
        hash[:kod_attributes] = kod_attributes if has? 'Kod'
        hash[:mnozstvi] = mnozstvi if has? 'Mnozstvi'
        hash[:mnozstvi_attributes] = mnozstvi_attributes if has? 'Mnozstvi'
        hash[:kurs] = kurs if has? 'Kurs'
        hash[:kurs_attributes] = kurs_attributes if has? 'Kurs'

        hash
      end
    end
  end
end