module MoneyS3
  module Builders
    class Eshop
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('IN_Export', data[:in_export], data[:in_export_attributes]) if data.key? :in_export
        root << build_element('IN_Changed', data[:in_changed], data[:in_changed_attributes]) if data.key? :in_changed
        root << build_element('IN_FakCis', data[:in_fak_cis], data[:in_fak_cis_attributes]) if data.key? :in_fak_cis
        root << build_element('IN_ReqStor', data[:in_req_stor], data[:in_req_stor_attributes]) if data.key? :in_req_stor
        root << build_element('IN_YesStor', data[:in_yes_stor], data[:in_yes_stor_attributes]) if data.key? :in_yes_stor
        root << build_element('IN_ShopID', data[:in_shop_id], data[:in_shop_id_attributes]) if data.key? :in_shop_id
        root << build_element('IN_Poznamk', data[:in_poznamk], data[:in_poznamk_attributes]) if data.key? :in_poznamk

        root
      end
    end
  end
end