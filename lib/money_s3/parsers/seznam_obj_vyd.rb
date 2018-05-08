module MoneyS3
  module Parsers
    class SeznamObjVyd
      include ParserCore::BaseParser

      def obj_vyd
        array_of_at(ObjVyd, ['ObjVyd'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:obj_vyd] = obj_vyd.map(&:to_h_with_attrs) if has? 'ObjVyd'

        hash
      end
    end
  end
end