require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class ObdobiDPH
      include BaseParser

      def datum_od
        at :DatumOd
      end

      def uc_md_1
        at :UcMD_1
      end

      def uc_d_1
        at :UcD_1
      end

      def uc_md_2
        at :UcMD_2
      end

      def uc_d_2
        at :UcD_2
      end

      def uc_md_3
        at :UcMD_3
      end

      def uc_d_3
        at :UcD_3
      end

      def uc_md_4
        at :UcMD_4
      end

      def uc_d_4
        at :UcD_4
      end

      def uc_md_5
        at :UcMD_5
      end

      def uc_d_5
        at :UcD_5
      end

      def uc_md_6
        at :UcMD_6
      end

      def uc_d_6
        at :UcD_6
      end

      def to_h
        hash = {}

        hash[:datum_od] = datum_od if raw.key? :DatumOd
        hash[:uc_md_1] = uc_md_1 if raw.key? :UcMD_1
        hash[:uc_d_1] = uc_d_1 if raw.key? :UcD_1
        hash[:uc_md_2] = uc_md_2 if raw.key? :UcMD_2
        hash[:uc_d_2] = uc_d_2 if raw.key? :UcD_2
        hash[:uc_md_3] = uc_md_3 if raw.key? :UcMD_3
        hash[:uc_d_3] = uc_d_3 if raw.key? :UcD_3
        hash[:uc_md_4] = uc_md_4 if raw.key? :UcMD_4
        hash[:uc_d_4] = uc_d_4 if raw.key? :UcD_4
        hash[:uc_md_5] = uc_md_5 if raw.key? :UcMD_5
        hash[:uc_d_5] = uc_d_5 if raw.key? :UcD_5
        hash[:uc_md_6] = uc_md_6 if raw.key? :UcMD_6
        hash[:uc_d_6] = uc_d_6 if raw.key? :UcD_6

        hash
      end
    end
  end
end