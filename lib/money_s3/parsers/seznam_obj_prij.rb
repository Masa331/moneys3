module MoneyS3
  module Parsers
    class SeznamObjPrij
      include ParserCore::BaseParser

      def obj_prij
        array_of_at(ObjPrij, ['ObjPrij'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:obj_prij] = obj_prij.map(&:to_h_with_attrs) if has? 'ObjPrij'

        hash
      end
    end
  end
end