module MoneyS3
  module Parsers
    class SeznamVazeb
      include ParserCore::BaseParser

      def vazba
        submodel_at(VazbaType, 'Vazba')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:vazba] = vazba.to_h if has? 'Vazba'

        hash
      end
    end
  end
end