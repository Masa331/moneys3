module MoneyS3
  module Parsers
    class SeznamProdejka
      include ParserCore::BaseParser

      def prodejka
        array_of_at(Prodejka, ['Prodejka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:prodejka] = prodejka.map(&:to_h) if has? 'Prodejka'

        hash
      end
    end
  end
end