module MoneyS3
  module Parsers
    class SubPolObjType
      include ParserCore::BaseParser

      def mj_na_sadu
        at 'MJNaSadu'
      end

      def polozka
        submodel_at(PolObjednType, 'Polozka')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:mj_na_sadu] = mj_na_sadu if has? 'MJNaSadu'
        hash[:polozka] = polozka.to_h_with_attrs if has? 'Polozka'

        hash
      end
    end
  end
end