module MoneyS3
  module Parsers
    class Valuty2
      include ParserCore::BaseParser

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, 'SouhrnDPH')
      end

      def celkem
        at 'Celkem'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:mena] = mena.to_h_with_attrs if has? 'Mena'
        hash[:souhrn_dph] = souhrn_dph.to_h_with_attrs if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'

        hash
      end
    end
  end
end