module MoneyS3
  module Parsers
    class ObdobiDPH
      include ParserCore::BaseParser

      def datum_od
        at 'DatumOd'
      end

      def datum_od_attributes
        attributes_at 'DatumOd'
      end

      def uc_md_1
        at 'UcMD_1'
      end

      def uc_md_1_attributes
        attributes_at 'UcMD_1'
      end

      def uc_d_1
        at 'UcD_1'
      end

      def uc_d_1_attributes
        attributes_at 'UcD_1'
      end

      def uc_md_2
        at 'UcMD_2'
      end

      def uc_md_2_attributes
        attributes_at 'UcMD_2'
      end

      def uc_d_2
        at 'UcD_2'
      end

      def uc_d_2_attributes
        attributes_at 'UcD_2'
      end

      def uc_md_3
        at 'UcMD_3'
      end

      def uc_md_3_attributes
        attributes_at 'UcMD_3'
      end

      def uc_d_3
        at 'UcD_3'
      end

      def uc_d_3_attributes
        attributes_at 'UcD_3'
      end

      def uc_md_4
        at 'UcMD_4'
      end

      def uc_md_4_attributes
        attributes_at 'UcMD_4'
      end

      def uc_d_4
        at 'UcD_4'
      end

      def uc_d_4_attributes
        attributes_at 'UcD_4'
      end

      def uc_md_5
        at 'UcMD_5'
      end

      def uc_md_5_attributes
        attributes_at 'UcMD_5'
      end

      def uc_d_5
        at 'UcD_5'
      end

      def uc_d_5_attributes
        attributes_at 'UcD_5'
      end

      def uc_md_6
        at 'UcMD_6'
      end

      def uc_md_6_attributes
        attributes_at 'UcMD_6'
      end

      def uc_d_6
        at 'UcD_6'
      end

      def uc_d_6_attributes
        attributes_at 'UcD_6'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:datum_od] = datum_od if has? 'DatumOd'
        hash[:datum_od_attributes] = datum_od_attributes if has? 'DatumOd'
        hash[:uc_md_1] = uc_md_1 if has? 'UcMD_1'
        hash[:uc_md_1_attributes] = uc_md_1_attributes if has? 'UcMD_1'
        hash[:uc_d_1] = uc_d_1 if has? 'UcD_1'
        hash[:uc_d_1_attributes] = uc_d_1_attributes if has? 'UcD_1'
        hash[:uc_md_2] = uc_md_2 if has? 'UcMD_2'
        hash[:uc_md_2_attributes] = uc_md_2_attributes if has? 'UcMD_2'
        hash[:uc_d_2] = uc_d_2 if has? 'UcD_2'
        hash[:uc_d_2_attributes] = uc_d_2_attributes if has? 'UcD_2'
        hash[:uc_md_3] = uc_md_3 if has? 'UcMD_3'
        hash[:uc_md_3_attributes] = uc_md_3_attributes if has? 'UcMD_3'
        hash[:uc_d_3] = uc_d_3 if has? 'UcD_3'
        hash[:uc_d_3_attributes] = uc_d_3_attributes if has? 'UcD_3'
        hash[:uc_md_4] = uc_md_4 if has? 'UcMD_4'
        hash[:uc_md_4_attributes] = uc_md_4_attributes if has? 'UcMD_4'
        hash[:uc_d_4] = uc_d_4 if has? 'UcD_4'
        hash[:uc_d_4_attributes] = uc_d_4_attributes if has? 'UcD_4'
        hash[:uc_md_5] = uc_md_5 if has? 'UcMD_5'
        hash[:uc_md_5_attributes] = uc_md_5_attributes if has? 'UcMD_5'
        hash[:uc_d_5] = uc_d_5 if has? 'UcD_5'
        hash[:uc_d_5_attributes] = uc_d_5_attributes if has? 'UcD_5'
        hash[:uc_md_6] = uc_md_6 if has? 'UcMD_6'
        hash[:uc_md_6_attributes] = uc_md_6_attributes if has? 'UcMD_6'
        hash[:uc_d_6] = uc_d_6 if has? 'UcD_6'
        hash[:uc_d_6_attributes] = uc_d_6_attributes if has? 'UcD_6'

        hash
      end
    end
  end
end