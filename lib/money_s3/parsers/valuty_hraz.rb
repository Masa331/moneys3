require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mena_type'

module MoneyS3
  module Parsers
    class ValutyHraz
      include BaseParser

      def castka
        at 'Castka'
      end

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:castka] = castka if has? 'Castka'
        hash[:mena] = mena.to_h_with_attrs if has? 'Mena'

        hash
      end
    end
  end
end