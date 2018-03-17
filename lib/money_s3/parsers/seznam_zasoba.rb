require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zasoba'

module MoneyS3
  module Parsers
    class SeznamZasoba
      include BaseParser

      def zasoba
        array_of_at(Zasoba, [:Zasoba])
      end

      def to_h
        { zasoba: zasoba.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end