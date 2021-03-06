module MoneyS3
  module Parsers
    class SeznamVydejka
      include ParserCore::BaseParser

      def vydejka
        array_of_at(Vydejka, ['Vydejka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:vydejka] = vydejka.map(&:to_h) if has? 'Vydejka'

        hash
      end
    end
  end
end