require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/dl_vyd'

module MoneyS3
  module Parsers
    class SeznamDLVyd
      include BaseParser

      def dl_vyd
        array_of_at(DLVyd, ['DLVyd'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:dl_vyd] = dl_vyd.map(&:to_h) if has? 'DLVyd'

        hash
      end
    end
  end
end