require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/nep_platidlo_type'

module MoneyS3
  module Parsers
    class NepPlatbaType
      include BaseParser

      def mnozstvi_mj
        at 'MnozstviMJ'
      end

      def castka
        at 'Castka'
      end

      def platidlo
        submodel_at(NepPlatidloType, 'Platidlo')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:mnozstvi_mj] = mnozstvi_mj if has? 'MnozstviMJ'
        hash[:castka] = castka if has? 'Castka'
        hash[:platidlo] = platidlo.to_h_with_attrs if has? 'Platidlo'

        hash
      end
    end
  end
end