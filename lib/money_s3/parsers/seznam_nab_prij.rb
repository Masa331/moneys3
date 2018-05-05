module MoneyS3
  module Parsers
    class SeznamNabPrij < SeznamType
      include ParserCore::BaseParser

      def nab_prij
        array_of_at(NabPrij, ['NabPrij'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:nab_prij] = nab_prij.map(&:to_h_with_attrs) if has? 'NabPrij'

        hash
        super.merge(hash)
      end
    end
  end
end