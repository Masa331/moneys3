module MoneyS3
  module Parsers
    class SeznamPoptVyd
      include ParserCore::BaseParser

      def popt_vyd
        array_of_at(PoptVyd, ['PoptVyd'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:popt_vyd] = popt_vyd.map(&:to_h) if has? 'PoptVyd'

        hash
      end
    end
  end
end