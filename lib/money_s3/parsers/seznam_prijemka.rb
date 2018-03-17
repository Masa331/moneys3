require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/prijemka'

module MoneyS3
  module Parsers
    class SeznamPrijemka
      include BaseParser

      def prijemka
        array_of_at(Prijemka, [:Prijemka])
      end

      def to_h
        { prijemka: prijemka.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end