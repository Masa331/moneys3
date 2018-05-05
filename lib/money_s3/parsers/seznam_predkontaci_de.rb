module MoneyS3
  module Parsers
    class SeznamPredkontaciDE < SeznamType
      include ParserCore::BaseParser

      def predkontace_de
        array_of_at(PredkontaceDEType, ['PredkontaceDE'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:predkontace_de] = predkontace_de.map(&:to_h_with_attrs) if has? 'PredkontaceDE'

        hash
        super.merge(hash)
      end
    end
  end
end