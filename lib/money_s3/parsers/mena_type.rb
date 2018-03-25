require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class MenaType
      include BaseParser

      def kod
        at 'Kod'
      end

      def mnozstvi
        at 'Mnozstvi'
      end

      def kurs
        at 'Kurs'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:kod] = kod if has? 'Kod'
        hash[:mnozstvi] = mnozstvi if has? 'Mnozstvi'
        hash[:kurs] = kurs if has? 'Kurs'

        hash
      end
    end
  end
end