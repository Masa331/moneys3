module MoneyS3
  module Parsers
    class SeznamCenHladin
      include ParserCore::BaseParser

      def cenova_hladina
        array_of_at(CenovaHladina, ['CenovaHladina'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:cenova_hladina] = cenova_hladina.map(&:to_h) if has? 'CenovaHladina'

        hash
      end
    end
  end
end