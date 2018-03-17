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
        { id_user: id_user,
          name_user: name_user,
          id_flag: id_flag,
          title: title,
          enabled: enabled,
          remark: remark,
          rf_width: rf_width,
          rf_height: rf_height
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end