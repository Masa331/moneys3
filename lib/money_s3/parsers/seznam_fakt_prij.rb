module MoneyS3
  module Parsers
    class SeznamFaktPrij < SeznamType
      include BaseParser

      def fakt_prij
        array_of_at(FaktPrij, ['FaktPrij'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:fakt_prij] = fakt_prij.map(&:to_h_with_attrs) if has? 'FaktPrij'

        hash
        super.merge(hash)
      end
    end
  end
end