module MoneyS3
  module Parsers
    class NepPlatbaType
      include ParserCore::BaseParser

      def platidlo
        submodel_at(NepPlatidloType, 'Platidlo')
      end

      def mnozstvi_mj
        at 'MnozstviMJ'
      end

      def mnozstvi_mj_attributes
        attributes_at 'MnozstviMJ'
      end

      def castka
        at 'Castka'
      end

      def castka_attributes
        attributes_at 'Castka'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:platidlo] = platidlo.to_h if has? 'Platidlo'
        hash[:mnozstvi_mj] = mnozstvi_mj if has? 'MnozstviMJ'
        hash[:mnozstvi_mj_attributes] = mnozstvi_mj_attributes if has? 'MnozstviMJ'
        hash[:castka] = castka if has? 'Castka'
        hash[:castka_attributes] = castka_attributes if has? 'Castka'

        hash
      end
    end
  end
end