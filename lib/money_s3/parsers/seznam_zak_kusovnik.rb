module MoneyS3
  module Parsers
    class SeznamZakKusovnik
      include ParserCore::BaseParser

      def zak_kusovnik
        array_of_at(KusovnikType, ['ZakKusovnik'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zak_kusovnik] = zak_kusovnik.map(&:to_h) if has? 'ZakKusovnik'

        hash
      end
    end
  end
end