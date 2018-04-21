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

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:mn_sada] = mn_sada if has? 'MnSada'
        hash[:polozka] = polozka.to_h_with_attrs if has? 'Polozka'

        hash
      end
    end
  end
end