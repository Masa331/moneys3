module MoneyS3
  module Parsers
    class SeznamProdejka < SeznamType
      include BaseParser

      def prodejka
        array_of_at(Prodejka, ['Prodejka'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:prodejka] = prodejka.map(&:to_h_with_attrs) if has? 'Prodejka'

        hash
        super.merge(hash)
      end
    end
  end
end