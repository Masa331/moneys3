require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/obj_prij'

module MoneyS3
  module Parsers
    class SeznamObjPrij
      include BaseParser

      def obj_prij
        array_of_at(ObjPrij, ['ObjPrij'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:obj_prij] = obj_prij.map(&:to_h_with_attrs) if has? 'ObjPrij'

        hash
      end
    end
  end
end