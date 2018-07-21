module MoneyS3
  module Parsers
    class SeznamFirem
      include ParserCore::BaseParser

      def firma
        array_of_at(Firma, ['Firma'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:firma] = firma.map(&:to_h) if has? 'Firma'

        hash
      end
    end
  end
end