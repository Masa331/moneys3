module MoneyS3
  module Parsers
    class SeznamCinnosti < SeznamType
      include BaseParser

      def cinnost
        array_of_at(Cinnost, ['Cinnost'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:cinnost] = cinnost.map(&:to_h_with_attrs) if has? 'Cinnost'

        hash
        super.merge(hash)
      end
    end
  end
end