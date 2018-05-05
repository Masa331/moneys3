module MoneyS3
  module Parsers
    class SeznamVazeb
      include ParserCore::BaseParser

      def vazba
        submodel_at(VazbaType, 'Vazba')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:vazba] = vazba.to_h_with_attrs if has? 'Vazba'

        hash
      end
    end
  end
end