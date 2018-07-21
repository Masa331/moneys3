module MoneyS3
  module Parsers
    class Castky
      include ParserCore::BaseParser

      def celkem
        at 'Celkem'
      end

      def celkem_attributes
        attributes_at 'Celkem'
      end

      def zaklad_0
        at 'Zaklad_0'
      end

      def zaklad_0_attributes
        attributes_at 'Zaklad_0'
      end

      def zaklad_1
        at 'Zaklad_1'
      end

      def zaklad_1_attributes
        attributes_at 'Zaklad_1'
      end

      def zaklad_2
        at 'Zaklad_2'
      end

      def zaklad_2_attributes
        attributes_at 'Zaklad_2'
      end

      def zaklad_3
        at 'Zaklad_3'
      end

      def zaklad_3_attributes
        attributes_at 'Zaklad_3'
      end

      def dph_1
        at 'DPH_1'
      end

      def dph_1_attributes
        attributes_at 'DPH_1'
      end

      def dph_2
        at 'DPH_2'
      end

      def dph_2_attributes
        attributes_at 'DPH_2'
      end

      def dph_3
        at 'DPH_3'
      end

      def dph_3_attributes
        attributes_at 'DPH_3'
      end

      def cest_sluzba
        at 'CestSluzba'
      end

      def cest_sluzba_attributes
        attributes_at 'CestSluzba'
      end

      def pouz_zb_1
        at 'PouzZb_1'
      end

      def pouz_zb_1_attributes
        attributes_at 'PouzZb_1'
      end

      def pouz_zb_2
        at 'PouzZb_2'
      end

      def pouz_zb_2_attributes
        attributes_at 'PouzZb_2'
      end

      def pouz_zb_3
        at 'PouzZb_3'
      end

      def pouz_zb_3_attributes
        attributes_at 'PouzZb_3'
      end

      def urc_cerp_zct
        at 'UrcCerpZct'
      end

      def urc_cerp_zct_attributes
        attributes_at 'UrcCerpZct'
      end

      def cerp_zuct
        at 'CerpZuct'
      end

      def cerp_zuct_attributes
        attributes_at 'CerpZuct'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:celkem] = celkem if has? 'Celkem'
        hash[:celkem_attributes] = celkem_attributes if has? 'Celkem'
        hash[:zaklad_0] = zaklad_0 if has? 'Zaklad_0'
        hash[:zaklad_0_attributes] = zaklad_0_attributes if has? 'Zaklad_0'
        hash[:zaklad_1] = zaklad_1 if has? 'Zaklad_1'
        hash[:zaklad_1_attributes] = zaklad_1_attributes if has? 'Zaklad_1'
        hash[:zaklad_2] = zaklad_2 if has? 'Zaklad_2'
        hash[:zaklad_2_attributes] = zaklad_2_attributes if has? 'Zaklad_2'
        hash[:zaklad_3] = zaklad_3 if has? 'Zaklad_3'
        hash[:zaklad_3_attributes] = zaklad_3_attributes if has? 'Zaklad_3'
        hash[:dph_1] = dph_1 if has? 'DPH_1'
        hash[:dph_1_attributes] = dph_1_attributes if has? 'DPH_1'
        hash[:dph_2] = dph_2 if has? 'DPH_2'
        hash[:dph_2_attributes] = dph_2_attributes if has? 'DPH_2'
        hash[:dph_3] = dph_3 if has? 'DPH_3'
        hash[:dph_3_attributes] = dph_3_attributes if has? 'DPH_3'
        hash[:cest_sluzba] = cest_sluzba if has? 'CestSluzba'
        hash[:cest_sluzba_attributes] = cest_sluzba_attributes if has? 'CestSluzba'
        hash[:pouz_zb_1] = pouz_zb_1 if has? 'PouzZb_1'
        hash[:pouz_zb_1_attributes] = pouz_zb_1_attributes if has? 'PouzZb_1'
        hash[:pouz_zb_2] = pouz_zb_2 if has? 'PouzZb_2'
        hash[:pouz_zb_2_attributes] = pouz_zb_2_attributes if has? 'PouzZb_2'
        hash[:pouz_zb_3] = pouz_zb_3 if has? 'PouzZb_3'
        hash[:pouz_zb_3_attributes] = pouz_zb_3_attributes if has? 'PouzZb_3'
        hash[:urc_cerp_zct] = urc_cerp_zct if has? 'UrcCerpZct'
        hash[:urc_cerp_zct_attributes] = urc_cerp_zct_attributes if has? 'UrcCerpZct'
        hash[:cerp_zuct] = cerp_zuct if has? 'CerpZuct'
        hash[:cerp_zuct_attributes] = cerp_zuct_attributes if has? 'CerpZuct'

        hash
      end
    end
  end
end