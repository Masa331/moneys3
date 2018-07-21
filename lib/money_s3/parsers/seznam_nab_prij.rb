module MoneyS3
  module Parsers
    class SeznamNabPrij
      include ParserCore::BaseParser

      def nab_prij
        array_of_at(NabPrij, ['NabPrij'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:nab_prij] = nab_prij.map(&:to_h) if has? 'NabPrij'

        hash
      end
    end
  end
end