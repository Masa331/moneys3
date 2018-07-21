module MoneyS3
  module Parsers
    class Eshop
      include ParserCore::BaseParser

      def in_export
        at 'IN_Export'
      end

      def in_export_attributes
        attributes_at 'IN_Export'
      end

      def in_changed
        at 'IN_Changed'
      end

      def in_changed_attributes
        attributes_at 'IN_Changed'
      end

      def in_fak_cis
        at 'IN_FakCis'
      end

      def in_fak_cis_attributes
        attributes_at 'IN_FakCis'
      end

      def in_req_stor
        at 'IN_ReqStor'
      end

      def in_req_stor_attributes
        attributes_at 'IN_ReqStor'
      end

      def in_yes_stor
        at 'IN_YesStor'
      end

      def in_yes_stor_attributes
        attributes_at 'IN_YesStor'
      end

      def in_shop_id
        at 'IN_ShopID'
      end

      def in_shop_id_attributes
        attributes_at 'IN_ShopID'
      end

      def in_poznamk
        at 'IN_Poznamk'
      end

      def in_poznamk_attributes
        attributes_at 'IN_Poznamk'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:in_export] = in_export if has? 'IN_Export'
        hash[:in_export_attributes] = in_export_attributes if has? 'IN_Export'
        hash[:in_changed] = in_changed if has? 'IN_Changed'
        hash[:in_changed_attributes] = in_changed_attributes if has? 'IN_Changed'
        hash[:in_fak_cis] = in_fak_cis if has? 'IN_FakCis'
        hash[:in_fak_cis_attributes] = in_fak_cis_attributes if has? 'IN_FakCis'
        hash[:in_req_stor] = in_req_stor if has? 'IN_ReqStor'
        hash[:in_req_stor_attributes] = in_req_stor_attributes if has? 'IN_ReqStor'
        hash[:in_yes_stor] = in_yes_stor if has? 'IN_YesStor'
        hash[:in_yes_stor_attributes] = in_yes_stor_attributes if has? 'IN_YesStor'
        hash[:in_shop_id] = in_shop_id if has? 'IN_ShopID'
        hash[:in_shop_id_attributes] = in_shop_id_attributes if has? 'IN_ShopID'
        hash[:in_poznamk] = in_poznamk if has? 'IN_Poznamk'
        hash[:in_poznamk_attributes] = in_poznamk_attributes if has? 'IN_Poznamk'

        hash
      end
    end
  end
end