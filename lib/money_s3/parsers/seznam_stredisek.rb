module MoneyS3
  module Parsers
    class SeznamStredisek < SeznamType
      include ParserCore::BaseParser

      def stredisko
        array_of_at(Stredisko, ['Stredisko'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:stredisko] = stredisko.map(&:to_h_with_attrs) if has? 'Stredisko'

        hash
        super.merge(hash)
      end
    end
  end
end