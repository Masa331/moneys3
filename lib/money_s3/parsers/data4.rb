module MoneyS3
  module Parsers
    class Data4
      include BaseParser

      def predkontace_de
        submodel_at(PredkontaceDEType, 'PredkontaceDE')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:predkontace_de] = predkontace_de.to_h_with_attrs if has? 'PredkontaceDE'

        hash
      end
    end
  end
end