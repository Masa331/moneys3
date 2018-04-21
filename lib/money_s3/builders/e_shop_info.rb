module MoneyS3
  module Builders
    class EShopInfo
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('eShopID', data[:e_shop_id]) if data.key? :e_shop_id
        root << build_element('eShopName', data[:e_shop_name]) if data.key? :e_shop_name
        root << build_element('eSaleID', data[:e_sale_id]) if data.key? :e_sale_id

        root
      end
    end
  end
end