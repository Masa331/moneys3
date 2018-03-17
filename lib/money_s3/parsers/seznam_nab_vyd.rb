require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/nab_vyd'

module MoneyS3
  module Parsers
    class SeznamNabVyd
      include BaseParser

      def nab_vyd
        array_of_at(NabVyd, [:NabVyd])
      end

      def to_h
        { nab_vyd: nab_vyd.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end