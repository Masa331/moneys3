require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/predkontace'

module MoneyS3
  module Parsers
    class SeznamPredkontaci
      include BaseParser

      def predkontace
        array_of_at(Predkontace, [:Predkontace])
      end

      def to_h
        { predkontace: predkontace.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end