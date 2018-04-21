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

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:mj_na_sadu] = mj_na_sadu if has? 'MJNaSadu'
        hash[:polozka] = polozka.to_h_with_attrs if has? 'Polozka'

        hash
      end
    end
  end
end