module MoneyS3
  module Parsers
    class SeznamCenHladin
      include ParserCore::BaseParser

      def cenova_hladina
        array_of_at(CenovaHladina, ['CenovaHladina'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:cenova_hladina] = cenova_hladina.map(&:to_h_with_attrs) if has? 'CenovaHladina'

        hash
      end
    end
  end
end