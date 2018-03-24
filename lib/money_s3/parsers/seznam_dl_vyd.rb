require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/dl_vyd'

module MoneyS3
  module Parsers
    class SeznamDLVyd
      include BaseParser

      def dl_vyd
        array_of_at(DLVyd, [:DLVyd])
      end

      def to_h
        hash = {}

        hash[:dl_vyd] = dl_vyd.map(&:to_h) if raw.key? :DLVyd

        hash
      end
    end
  end
end