module MoneyS3
  module Parsers
    class SeznamDLPrij
      include ParserCore::BaseParser

      def dl_prij
        array_of_at(DLPrij, ['DLPrij'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:dl_prij] = dl_prij.map(&:to_h_with_attrs) if has? 'DLPrij'

        hash
      end
    end
  end
end