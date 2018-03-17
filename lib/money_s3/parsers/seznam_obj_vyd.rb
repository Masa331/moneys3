require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/obj_vyd'

module MoneyS3
  module Parsers
    class SeznamObjVyd
      include BaseParser

      def obj_vyd
        array_of_at(ObjVyd, [:ObjVyd])
      end

      def to_h
        { obj_vyd: obj_vyd.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end