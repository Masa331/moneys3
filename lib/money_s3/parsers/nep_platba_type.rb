module MoneyS3
  module Parsers
    class NepPlatbaType
      include BaseParser

      def platidlo
        submodel_at(NepPlatidloType, 'Platidlo')
      end

      def mnozstvi_mj
        at 'MnozstviMJ'
      end

      def castka
        at 'Castka'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:platidlo] = platidlo.to_h_with_attrs if has? 'Platidlo'
        hash[:mnozstvi_mj] = mnozstvi_mj if has? 'MnozstviMJ'
        hash[:castka] = castka if has? 'Castka'

        hash
      end
    end
  end
end