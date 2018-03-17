require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class EShopInfo
      include BaseBuilder

      attr_accessor :e_shop_id, :e_shop_name, :e_sale_id

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('eShopID') << e_shop_id) if e_shop_id
        root << (Ox::Element.new('eShopName') << e_shop_name) if e_shop_name
        root << (Ox::Element.new('eSaleID') << e_sale_id) if e_sale_id

        root
      end
    end
  end
end