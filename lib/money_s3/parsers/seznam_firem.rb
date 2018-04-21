module MoneyS3
  module Parsers
    class SeznamFirem < SeznamType
      include BaseParser

      def firma
        array_of_at(Firma, ['Firma'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:firma] = firma.map(&:to_h_with_attrs) if has? 'Firma'

        hash
        super.merge(hash)
      end
    end
  end
end