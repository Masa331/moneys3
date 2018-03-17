require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/fakt_vyd'

module MoneyS3
  module Parsers
    class SeznamFaktVyd
      include BaseParser

      def fakt_vyd
        array_of_at(FaktVyd, [:FaktVyd])
      end

      def to_h
        { fakt_vyd: fakt_vyd.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end