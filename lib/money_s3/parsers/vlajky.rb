require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/vlajka_type'

module MoneyS3
  module Parsers
    class Vlajky
      include BaseParser

      def global
        submodel_at(VlajkaType, :Global)
      end

      def user
        submodel_at(VlajkaType, :User)
      end

      def to_h
        { global: global.to_h,
          user: user.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end