module MoneyS3
  module Parsers
    class SeznamKmKarta
      include ParserCore::BaseParser

      def km_karta
        array_of_at(KmKarta, ['KmKarta'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:km_karta] = km_karta.map(&:to_h_with_attrs) if has? 'KmKarta'

        hash
      end
    end
  end
end