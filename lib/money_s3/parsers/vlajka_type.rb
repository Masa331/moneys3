require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class VlajkaType
      include BaseParser

      def id_user
        at :IDUser
      end

      def name_user
        at :NameUser
      end

      def id_flag
        at :IDFlag
      end

      def title
        at :Title
      end

      def enabled
        at :Enabled
      end

      def remark
        at :Remark
      end

      def rf_width
        at :RFWidth
      end

      def rf_height
        at :RFHeight
      end

      def to_h
        hash = {}

        hash[:id_user] = id_user if has? :IDUser
        hash[:name_user] = name_user if has? :NameUser
        hash[:id_flag] = id_flag if has? :IDFlag
        hash[:title] = title if has? :Title
        hash[:enabled] = enabled if has? :Enabled
        hash[:remark] = remark if has? :Remark
        hash[:rf_width] = rf_width if has? :RFWidth
        hash[:rf_height] = rf_height if has? :RFHeight

        hash
      end
    end
  end
end