module MoneyS3
  module Parsers
    class Data4
      include ParserCore::BaseParser

      def predkontace_de
        submodel_at(PredkontaceDEType, 'PredkontaceDE')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:predkontace_de] = predkontace_de.to_h if has? 'PredkontaceDE'

        hash
      end
    end
  end
end