require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/int_dokl'

module MoneyS3
  module Parsers
    class SeznamIntDokl
      include BaseParser

      def int_dokl
        array_of_at(IntDokl, [:IntDokl])
      end

      def to_h
        { int_dokl: int_dokl.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end