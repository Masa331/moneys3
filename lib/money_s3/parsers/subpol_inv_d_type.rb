require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/pol_inv_dokl_type'

module MoneyS3
  module Parsers
    class SubpolInvDType
      include BaseParser

      def mn_sada
        at 'MnSada'
      end

      def polozka
        submodel_at(PolInvDoklType, 'Polozka')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:mn_sada] = mn_sada if has? 'MnSada'
        hash[:polozka] = polozka.to_h if has? 'Polozka'

        hash
      end
    end
  end
end