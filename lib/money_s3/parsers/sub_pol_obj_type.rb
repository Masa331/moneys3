module MoneyS3
  module Parsers
    class SubPolObjType
      include ParserCore::BaseParser

      def mj_na_sadu
        at 'MJNaSadu'
      end

      def mj_na_sadu_attributes
        attributes_at 'MJNaSadu'
      end

      def polozka
        submodel_at(PolObjednType, 'Polozka')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:mj_na_sadu] = mj_na_sadu if has? 'MJNaSadu'
        hash[:mj_na_sadu_attributes] = mj_na_sadu_attributes if has? 'MJNaSadu'
        hash[:polozka] = polozka.to_h if has? 'Polozka'

        hash
      end
    end
  end
end