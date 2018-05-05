module MoneyS3
  module Parsers
    class SeznamVydejka < SeznamType
      include ParserCore::BaseParser

      def vydejka
        array_of_at(Vydejka, ['Vydejka'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:vydejka] = vydejka.map(&:to_h_with_attrs) if has? 'Vydejka'

        hash
        super.merge(hash)
      end
    end
  end
end