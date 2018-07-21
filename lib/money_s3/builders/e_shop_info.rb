module MoneyS3
  module Builders
    class EShopInfo
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('eShopID', data[:e_shop_id], data[:e_shop_id_attributes]) if data.key? :e_shop_id
        root << build_element('eShopName', data[:e_shop_name], data[:e_shop_name_attributes]) if data.key? :e_shop_name
        root << build_element('eSaleID', data[:e_sale_id], data[:e_sale_id_attributes]) if data.key? :e_sale_id

        root
      end
    end
  end
end