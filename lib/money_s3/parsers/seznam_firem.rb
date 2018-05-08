module MoneyS3
  module Parsers
    class SeznamFirem
      include ParserCore::BaseParser

      def firma
        array_of_at(Firma, ['Firma'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:firma] = firma.map(&:to_h_with_attrs) if has? 'Firma'

        hash
      end
    end
  end
end