module MoneyS3
  module Parsers
    class SeznamInvDokl < SeznamType
      include ParserCore::BaseParser

      def inv_doklad
        array_of_at(InvDoklType, ['InvDoklad'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:inv_doklad] = inv_doklad.map(&:to_h_with_attrs) if has? 'InvDoklad'

        hash
        super.merge(hash)
      end
    end
  end
end