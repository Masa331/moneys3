require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/cinnost'

module MoneyS3
  module Parsers
    class SeznamCinnosti
      include BaseParser

      def cinnost
        array_of_at(Cinnost, [:Cinnost])
      end

      def to_h
        { cinnost: cinnost.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end