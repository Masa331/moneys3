module MoneyS3
  module Parsers
    class SeznamPredkontaciDE
      include ParserCore::BaseParser

      def predkontace_de
        array_of_at(PredkontaceDEType, ['PredkontaceDE'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:predkontace_de] = predkontace_de.map(&:to_h) if has? 'PredkontaceDE'

        hash
      end
    end
  end
end