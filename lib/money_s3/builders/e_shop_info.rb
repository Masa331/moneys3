require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class EShopInfo
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :e_shop_id
          element = Ox::Element.new('eShopID')
          element << attributes[:e_shop_id] if attributes[:e_shop_id]
          root << element
        end

        if attributes.key? :e_shop_name
          element = Ox::Element.new('eShopName')
          element << attributes[:e_shop_name] if attributes[:e_shop_name]
          root << element
        end

        if attributes.key? :e_sale_id
          element = Ox::Element.new('eSaleID')
          element << attributes[:e_sale_id] if attributes[:e_sale_id]
          root << element
        end

        root
      end
    end
  end
end