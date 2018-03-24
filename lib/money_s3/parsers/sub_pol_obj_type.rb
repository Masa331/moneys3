require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/pol_objedn_type'

module MoneyS3
  module Parsers
    class SubPolObjType
      include BaseParser

      def mj_na_sadu
        at :MJNaSadu
      end

      def polozka
        submodel_at(PolObjednType, :Polozka)
      end

      def to_h
        hash = {}

        hash[:mj_na_sadu] = mj_na_sadu if raw.key? :MJNaSadu
        hash[:polozka] = polozka.to_h if raw.key? :Polozka

        hash
      end
    end
  end
end