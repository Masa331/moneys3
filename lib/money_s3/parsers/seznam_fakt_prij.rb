module MoneyS3
  module Parsers
    class SeznamFaktPrij
      include ParserCore::BaseParser

      def fakt_prij
        array_of_at(FaktPrij, ['FaktPrij'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:fakt_prij] = fakt_prij.map(&:to_h) if has? 'FaktPrij'

        hash
      end
    end
  end
end