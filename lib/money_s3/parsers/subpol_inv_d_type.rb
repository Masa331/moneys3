module MoneyS3
  module Parsers
    class SubpolInvDType
      include ParserCore::BaseParser

      def mn_sada
        at 'MnSada'
      end

      def mn_sada_attributes
        attributes_at 'MnSada'
      end

      def polozka
        submodel_at(PolInvDoklType, 'Polozka')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:mn_sada] = mn_sada if has? 'MnSada'
        hash[:mn_sada_attributes] = mn_sada_attributes if has? 'MnSada'
        hash[:polozka] = polozka.to_h if has? 'Polozka'

        hash
      end
    end
  end
end