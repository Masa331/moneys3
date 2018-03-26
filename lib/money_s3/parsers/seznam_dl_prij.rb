require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/dl_prij'

module MoneyS3
  module Parsers
    class SeznamDLPrij
      include BaseParser

      def dl_prij
        array_of_at(DLPrij, ['DLPrij'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:dl_prij] = dl_prij.map(&:to_h_with_attrs) if has? 'DLPrij'

        hash
      end
    end
  end
end