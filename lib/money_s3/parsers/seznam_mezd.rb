require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mzda_type'

module MoneyS3
  module Parsers
    class SeznamMezd
      include BaseParser

      def mzda
        array_of_at(MzdaType, [:Mzda])
      end

      def to_h
        { mzda: mzda.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end