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
        { e_shop_id: e_shop_id,
          e_shop_name: e_shop_name,
          e_sale_id: e_sale_id
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end