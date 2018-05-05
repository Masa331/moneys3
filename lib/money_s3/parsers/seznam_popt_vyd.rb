module MoneyS3
  module Parsers
    class SeznamPoptVyd < SeznamType
      include ParserCore::BaseParser

      def popt_vyd
        array_of_at(PoptVyd, ['PoptVyd'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:popt_vyd] = popt_vyd.map(&:to_h_with_attrs) if has? 'PoptVyd'

        hash
        super.merge(hash)
      end
    end
  end
end