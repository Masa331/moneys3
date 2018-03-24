require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/pol_objedn_type'

module MoneyS3
  module Parsers
    class SubPolObjType
      include BaseParser

      def mj_na_sadu
        at 'MJNaSadu'
      end

      def polozka
        submodel_at(PolObjednType, 'Polozka')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:mj_na_sadu] = mj_na_sadu if has? 'MJNaSadu'
        hash[:polozka] = polozka.to_h if has? 'Polozka'

        hash
      end
    end
  end
end