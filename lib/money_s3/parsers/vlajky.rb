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
        hash = {}

        hash[:global] = global.to_h if raw.key? :Global
        hash[:user] = user.to_h if raw.key? :User

        hash
      end
    end
  end
end