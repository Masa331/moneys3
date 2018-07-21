module MoneyS3
  module Parsers
    class SeznamInvDokl
      include ParserCore::BaseParser

      def inv_doklad
        array_of_at(InvDoklType, ['InvDoklad'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:inv_doklad] = inv_doklad.map(&:to_h) if has? 'InvDoklad'

        hash
      end
    end
  end
end