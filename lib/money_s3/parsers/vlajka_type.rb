module MoneyS3
  module Parsers
    class VlajkaType
      include ParserCore::BaseParser

      def id_user
        at 'IDUser'
      end

      def id_user_attributes
        attributes_at 'IDUser'
      end

      def name_user
        at 'NameUser'
      end

      def name_user_attributes
        attributes_at 'NameUser'
      end

      def id_flag
        at 'IDFlag'
      end

      def id_flag_attributes
        attributes_at 'IDFlag'
      end

      def title
        at 'Title'
      end

      def title_attributes
        attributes_at 'Title'
      end

      def enabled
        at 'Enabled'
      end

      def enabled_attributes
        attributes_at 'Enabled'
      end

      def remark
        at 'Remark'
      end

      def remark_attributes
        attributes_at 'Remark'
      end

      def rf_width
        at 'RFWidth'
      end

      def rf_width_attributes
        attributes_at 'RFWidth'
      end

      def rf_height
        at 'RFHeight'
      end

      def rf_height_attributes
        attributes_at 'RFHeight'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:id_user] = id_user if has? 'IDUser'
        hash[:id_user_attributes] = id_user_attributes if has? 'IDUser'
        hash[:name_user] = name_user if has? 'NameUser'
        hash[:name_user_attributes] = name_user_attributes if has? 'NameUser'
        hash[:id_flag] = id_flag if has? 'IDFlag'
        hash[:id_flag_attributes] = id_flag_attributes if has? 'IDFlag'
        hash[:title] = title if has? 'Title'
        hash[:title_attributes] = title_attributes if has? 'Title'
        hash[:enabled] = enabled if has? 'Enabled'
        hash[:enabled_attributes] = enabled_attributes if has? 'Enabled'
        hash[:remark] = remark if has? 'Remark'
        hash[:remark_attributes] = remark_attributes if has? 'Remark'
        hash[:rf_width] = rf_width if has? 'RFWidth'
        hash[:rf_width_attributes] = rf_width_attributes if has? 'RFWidth'
        hash[:rf_height] = rf_height if has? 'RFHeight'
        hash[:rf_height_attributes] = rf_height_attributes if has? 'RFHeight'

        hash
      end
    end
  end
end