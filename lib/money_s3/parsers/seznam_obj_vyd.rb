module MoneyS3
  module Parsers
    class SeznamObjVyd
      include ParserCore::BaseParser

      def obj_vyd
        array_of_at(ObjVyd, ['ObjVyd'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:obj_vyd] = obj_vyd.map(&:to_h) if has? 'ObjVyd'

        hash
      end
    end
  end
end