module MoneyS3
  module Parsers
    class ValutyUhr
      include BaseParser

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def castka
        at 'Castka'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:mena] = mena.to_h_with_attrs if has? 'Mena'
        hash[:castka] = castka if has? 'Castka'

        hash
      end
    end
  end
end