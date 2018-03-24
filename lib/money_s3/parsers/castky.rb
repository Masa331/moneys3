require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Castky
      include BaseParser

      def celkem
        at :Celkem
      end

      def zaklad_0
        at :Zaklad_0
      end

      def zaklad_1
        at :Zaklad_1
      end

      def zaklad_2
        at :Zaklad_2
      end

      def zaklad_3
        at :Zaklad_3
      end

      def dph_1
        at :DPH_1
      end

      def dph_2
        at :DPH_2
      end

      def dph_3
        at :DPH_3
      end

      def cest_sluzba
        at :CestSluzba
      end

      def pouz_zb_1
        at :PouzZb_1
      end

      def pouz_zb_2
        at :PouzZb_2
      end

      def pouz_zb_3
        at :PouzZb_3
      end

      def urc_cerp_zct
        at :UrcCerpZct
      end

      def cerp_zuct
        at :CerpZuct
      end

      def to_h
        hash = {}

        hash[:celkem] = celkem if raw.key? :Celkem
        hash[:zaklad_0] = zaklad_0 if raw.key? :Zaklad_0
        hash[:zaklad_1] = zaklad_1 if raw.key? :Zaklad_1
        hash[:zaklad_2] = zaklad_2 if raw.key? :Zaklad_2
        hash[:zaklad_3] = zaklad_3 if raw.key? :Zaklad_3
        hash[:dph_1] = dph_1 if raw.key? :DPH_1
        hash[:dph_2] = dph_2 if raw.key? :DPH_2
        hash[:dph_3] = dph_3 if raw.key? :DPH_3
        hash[:cest_sluzba] = cest_sluzba if raw.key? :CestSluzba
        hash[:pouz_zb_1] = pouz_zb_1 if raw.key? :PouzZb_1
        hash[:pouz_zb_2] = pouz_zb_2 if raw.key? :PouzZb_2
        hash[:pouz_zb_3] = pouz_zb_3 if raw.key? :PouzZb_3
        hash[:urc_cerp_zct] = urc_cerp_zct if raw.key? :UrcCerpZct
        hash[:cerp_zuct] = cerp_zuct if raw.key? :CerpZuct

        hash
      end
    end
  end
end