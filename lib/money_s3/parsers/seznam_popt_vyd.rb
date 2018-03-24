require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/popt_vyd'

module MoneyS3
  module Parsers
    class SeznamPoptVyd
      include BaseParser

      def popt_vyd
        array_of_at(PoptVyd, [:PoptVyd])
      end

      def to_h
        hash = {}

        hash[:popt_vyd] = popt_vyd.map(&:to_h) if raw.key? :PoptVyd

        hash
      end
    end
  end
end