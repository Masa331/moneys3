require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/inv_dokl_type'

module MoneyS3
  module Parsers
    class SeznamInvDokl
      include BaseParser

      def inv_doklad
        array_of_at(InvDoklType, ['InvDoklad'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:inv_doklad] = inv_doklad.map(&:to_h_with_attrs) if has? 'InvDoklad'

        hash
      end
    end
  end
end