module MoneyS3
  module Parsers
    class SeznamTypKusovnik
      include ParserCore::BaseParser

      def typ_kusovnik
        array_of_at(KusovnikType, ['TypKusovnik'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:typ_kusovnik] = typ_kusovnik.map(&:to_h) if has? 'TypKusovnik'

        hash
      end
    end
  end
end