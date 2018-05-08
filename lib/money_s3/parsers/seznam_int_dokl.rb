module MoneyS3
  module Parsers
    class SeznamIntDokl
      include ParserCore::BaseParser

      def int_dokl
        array_of_at(IntDokl, ['IntDokl'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:int_dokl] = int_dokl.map(&:to_h_with_attrs) if has? 'IntDokl'

        hash
      end
    end
  end
end