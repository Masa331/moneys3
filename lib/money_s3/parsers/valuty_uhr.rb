module MoneyS3
  module Parsers
    class ValutyUhr
      include ParserCore::BaseParser

      def mena
        submodel_at(MenaType, 'Mena')
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

        hash[:mena] = mena.to_h if has? 'Mena'
        hash[:castka] = castka if has? 'Castka'
        hash[:castka_attributes] = castka_attributes if has? 'Castka'

        hash
      end
    end
  end
end