module MoneyS3
  module Parsers
    class SeznamSkladu
      include ParserCore::BaseParser

      def sklad
        array_of_at(Sklad, ['Sklad'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:sklad] = sklad.map(&:to_h) if has? 'Sklad'

        hash
      end
    end
  end
end