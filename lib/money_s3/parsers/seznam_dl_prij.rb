module MoneyS3
  module Parsers
    class SeznamDLPrij
      include ParserCore::BaseParser

      def dl_prij
        array_of_at(DLPrij, ['DLPrij'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:dl_prij] = dl_prij.map(&:to_h) if has? 'DLPrij'

        hash
      end
    end
  end
end