module MoneyS3
  module Parsers
    class SeznamPrijemka
      include ParserCore::BaseParser

      def prijemka
        array_of_at(Prijemka, ['Prijemka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:prijemka] = prijemka.map(&:to_h) if has? 'Prijemka'

        hash
      end
    end
  end
end