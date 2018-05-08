module MoneyS3
  module Parsers
    class SeznamProdejka
      include ParserCore::BaseParser

      def prodejka
        array_of_at(Prodejka, ['Prodejka'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:prodejka] = prodejka.map(&:to_h_with_attrs) if has? 'Prodejka'

        hash
      end
    end
  end
end