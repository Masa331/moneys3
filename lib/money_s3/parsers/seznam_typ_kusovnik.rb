module MoneyS3
  module Parsers
    class SeznamTypKusovnik
      include ParserCore::BaseParser

      def typ_kusovnik
        array_of_at(KusovnikType, ['TypKusovnik'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:typ_kusovnik] = typ_kusovnik.map(&:to_h_with_attrs) if has? 'TypKusovnik'

        hash
      end
    end
  end
end