require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/faktura_type'

module MoneyS3
  module Parsers
    class Data
      include BaseParser

      def fakt_vyd
        submodel_at(FakturaType, :FaktVyd)
      end

      def fakt_prij
        submodel_at(FakturaType, :FaktPrij)
      end

      def to_h
        { fakt_vyd: fakt_vyd.to_h,
          fakt_prij: fakt_prij.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end