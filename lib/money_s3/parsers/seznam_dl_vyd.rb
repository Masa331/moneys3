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
        { dl_vyd: dl_vyd.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end