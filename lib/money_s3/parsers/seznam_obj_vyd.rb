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
        hash = {}

        hash[:obj_vyd] = obj_vyd.map(&:to_h) if raw.key? :ObjVyd

        hash
      end
    end
  end
end