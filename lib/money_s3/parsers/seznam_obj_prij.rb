module MoneyS3
  module Parsers
    class SeznamObjPrij
      include ParserCore::BaseParser

      def obj_prij
        array_of_at(ObjPrij, ['ObjPrij'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:obj_prij] = obj_prij.map(&:to_h) if has? 'ObjPrij'

        hash
      end
    end
  end
end