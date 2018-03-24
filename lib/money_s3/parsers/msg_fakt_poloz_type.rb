require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/msg_poloz_type'

module MoneyS3
  module Parsers
    class MsgFaktPolozType
      include BaseParser

      def skl_polozka
        submodel_at(MsgPolozType, 'SklPolozka')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:skl_polozka] = skl_polozka.to_h if has? 'SklPolozka'

        hash
      end
    end
  end
end