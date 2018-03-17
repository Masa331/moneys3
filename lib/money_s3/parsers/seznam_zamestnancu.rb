require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zamestnanec_type'

module MoneyS3
  module Parsers
    class SeznamZamestnancu
      include BaseParser

      def zamestnanec
        array_of_at(ZamestnanecType, [:Zamestnanec])
      end

      def to_h
        { zamestnanec: zamestnanec.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end