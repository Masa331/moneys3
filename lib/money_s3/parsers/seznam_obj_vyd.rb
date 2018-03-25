require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/obj_vyd'

module MoneyS3
  module Parsers
    class SeznamObjVyd
      include BaseParser

      def obj_vyd
        array_of_at(ObjVyd, ['ObjVyd'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:obj_vyd] = obj_vyd.map(&:to_h) if has? 'ObjVyd'

        hash
      end
    end
  end
end