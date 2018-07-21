module MoneyS3
  module Parsers
    class SeznamPoptPrij
      include ParserCore::BaseParser

      def popt_prij
        array_of_at(PoptPrij, ['PoptPrij'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:popt_prij] = popt_prij.map(&:to_h) if has? 'PoptPrij'

        hash
      end
    end
  end
end