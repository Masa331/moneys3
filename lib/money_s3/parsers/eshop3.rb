module MoneyS3
  module Parsers
    class Eshop3
      include ParserCore::BaseParser

      def in_export
        at 'IN_Export'
      end

      def in_changed
        at 'IN_Changed'
      end

      def in_obj_cis
        at 'IN_ObjCis'
      end

      def in_stav
        at 'IN_Stav'
      end

      def in_req_stor
        at 'IN_ReqStor'
      end

      def in_yes_stor
        at 'IN_YesStor'
      end

      def in_shop_id
        at 'IN_ShopID'
      end

      def in_poznamk
        at 'IN_Poznamk'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:in_export] = in_export if has? 'IN_Export'
        hash[:in_changed] = in_changed if has? 'IN_Changed'
        hash[:in_obj_cis] = in_obj_cis if has? 'IN_ObjCis'
        hash[:in_stav] = in_stav if has? 'IN_Stav'
        hash[:in_req_stor] = in_req_stor if has? 'IN_ReqStor'
        hash[:in_yes_stor] = in_yes_stor if has? 'IN_YesStor'
        hash[:in_shop_id] = in_shop_id if has? 'IN_ShopID'
        hash[:in_poznamk] = in_poznamk if has? 'IN_Poznamk'

        hash
      end
    end
  end
end