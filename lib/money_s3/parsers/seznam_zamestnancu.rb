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
        hash = {}

        hash[:zamestnanec] = zamestnanec.map(&:to_h) if raw.key? :Zamestnanec

        hash
      end
    end
  end
end