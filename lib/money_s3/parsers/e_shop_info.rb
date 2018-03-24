require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class EShopInfo
      include BaseParser

      def e_shop_id
        at :eShopID
      end

      def e_shop_name
        at :eShopName
      end

      def e_sale_id
        at :eSaleID
      end

      def to_h
        hash = {}

        hash[:e_shop_id] = e_shop_id if raw.key? :eShopID
        hash[:e_shop_name] = e_shop_name if raw.key? :eShopName
        hash[:e_sale_id] = e_sale_id if raw.key? :eSaleID

        hash
      end
    end
  end
end