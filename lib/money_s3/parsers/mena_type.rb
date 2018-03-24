require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class MenaType
      include BaseParser

      def kod
        at :Kod
      end

      def mnozstvi
        at :Mnozstvi
      end

      def kurs
        at :Kurs
      end

      def to_h
        hash = {}

        hash[:kod] = kod if raw.key? :Kod
        hash[:mnozstvi] = mnozstvi if raw.key? :Mnozstvi
        hash[:kurs] = kurs if raw.key? :Kurs

        hash
      end
    end
  end
end