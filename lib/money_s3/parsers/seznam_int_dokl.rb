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
        hash = {}

        hash[:int_dokl] = int_dokl.map(&:to_h) if has? :IntDokl

        hash
      end
    end
  end
end