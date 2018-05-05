module MoneyS3
  module Parsers
    class EShopInfo
      include ParserCore::BaseParser

      def e_shop_id
        at 'eShopID'
      end

      def e_shop_name
        at 'eShopName'
      end

      def e_sale_id
        at 'eSaleID'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:e_shop_id] = e_shop_id if has? 'eShopID'
        hash[:e_shop_name] = e_shop_name if has? 'eShopName'
        hash[:e_sale_id] = e_sale_id if has? 'eSaleID'

        hash
      end
    end
  end
end