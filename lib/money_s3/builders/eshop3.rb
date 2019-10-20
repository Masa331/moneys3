module MoneyS3
  module Builders
    class Eshop3
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('IN_Export', data[:in_export], data[:in_export_attributes]) if data.key? :in_export
        root << build_element('IN_Changed', data[:in_changed], data[:in_changed_attributes]) if data.key? :in_changed
        root << build_element('IN_ObjCis', data[:in_obj_cis], data[:in_obj_cis_attributes]) if data.key? :in_obj_cis
        root << build_element('IN_Stav', data[:in_stav], data[:in_stav_attributes]) if data.key? :in_stav
        root << build_element('IN_ReqStor', data[:in_req_stor], data[:in_req_stor_attributes]) if data.key? :in_req_stor
        root << build_element('IN_YesStor', data[:in_yes_stor], data[:in_yes_stor_attributes]) if data.key? :in_yes_stor
        root << build_element('IN_ShopID', data[:in_shop_id], data[:in_shop_id_attributes]) if data.key? :in_shop_id
        root << build_element('IN_Poznamk', data[:in_poznamk], data[:in_poznamk_attributes]) if data.key? :in_poznamk

        root
      end
    end
  end
end