module MoneyS3
  module Parsers
    class SeznamIntDokl < SeznamType
      include BaseParser

      def int_dokl
        array_of_at(IntDokl, ['IntDokl'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:int_dokl] = int_dokl.map(&:to_h_with_attrs) if has? 'IntDokl'

        hash
        super.merge(hash)
      end
    end
  end
end