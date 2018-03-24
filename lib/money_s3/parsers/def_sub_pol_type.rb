require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/pol_skl_dokl_type'

module MoneyS3
  module Parsers
    class DefSubPolType
      include BaseParser

      def mj_na_sadu
        at 'MJNaSadu'
      end

      def polozka
        submodel_at(PolSklDoklType, 'Polozka')
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