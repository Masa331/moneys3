module MoneyS3
  module Builders
    class Eshop
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('IN_Export', data[:in_export]) if data.key? :in_export
        root << build_element('IN_Changed', data[:in_changed]) if data.key? :in_changed
        root << build_element('IN_FakCis', data[:in_fak_cis]) if data.key? :in_fak_cis
        root << build_element('IN_ReqStor', data[:in_req_stor]) if data.key? :in_req_stor
        root << build_element('IN_YesStor', data[:in_yes_stor]) if data.key? :in_yes_stor
        root << build_element('IN_ShopID', data[:in_shop_id]) if data.key? :in_shop_id
        root << build_element('IN_Poznamk', data[:in_poznamk]) if data.key? :in_poznamk

        root
      end
    end
  end
end