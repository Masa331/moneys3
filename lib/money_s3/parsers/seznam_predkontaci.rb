module MoneyS3
  module Parsers
    class SeznamPredkontaci
      include ParserCore::BaseParser

      def predkontace
        array_of_at(Predkontace, ['Predkontace'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:predkontace] = predkontace.map(&:to_h_with_attrs) if has? 'Predkontace'

        hash
      end
    end
  end
end