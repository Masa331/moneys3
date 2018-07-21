module MoneyS3
  module Parsers
    class SeznamZakazka
      include ParserCore::BaseParser

      def zakazka
        array_of_at(Zakazka, ['Zakazka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zakazka] = zakazka.map(&:to_h) if has? 'Zakazka'

        hash
      end
    end
  end
end