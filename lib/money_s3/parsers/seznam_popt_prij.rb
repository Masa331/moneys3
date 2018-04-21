module MoneyS3
  module Parsers
    class SeznamPoptPrij < SeznamType
      include BaseParser

      def popt_prij
        array_of_at(PoptPrij, ['PoptPrij'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:popt_prij] = popt_prij.map(&:to_h_with_attrs) if has? 'PoptPrij'

        hash
        super.merge(hash)
      end
    end
  end
end