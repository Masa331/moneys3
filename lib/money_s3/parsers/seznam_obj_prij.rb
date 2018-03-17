require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/obj_prij'

module MoneyS3
  module Parsers
    class SeznamObjPrij
      include BaseParser

      def obj_prij
        array_of_at(ObjPrij, [:ObjPrij])
      end

      def to_h
        { obj_prij: obj_prij.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end