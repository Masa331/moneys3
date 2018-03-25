require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/inv_dokl_type'

module MoneyS3
  module Parsers
    class SeznamInvDokl
      include BaseParser

      def inv_doklad
        array_of_at(InvDoklType, [:InvDoklad])
      end

      def to_h
        hash = {}

        hash[:inv_doklad] = inv_doklad.map(&:to_h) if has? :InvDoklad

        hash
      end
    end
  end
end