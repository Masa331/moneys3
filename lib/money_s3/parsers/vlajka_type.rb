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

        hash[:id_user] = id_user if raw.key? :IDUser
        hash[:name_user] = name_user if raw.key? :NameUser
        hash[:id_flag] = id_flag if raw.key? :IDFlag
        hash[:title] = title if raw.key? :Title
        hash[:enabled] = enabled if raw.key? :Enabled
        hash[:remark] = remark if raw.key? :Remark
        hash[:rf_width] = rf_width if raw.key? :RFWidth
        hash[:rf_height] = rf_height if raw.key? :RFHeight

        hash
      end
    end
  end
end