module MoneyS3
  module Parsers
    class SeznamFaktVyd
      include ParserCore::BaseParser

      def fakt_vyd
        array_of_at(FaktVyd, ['FaktVyd'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:fakt_vyd] = fakt_vyd.map(&:to_h_with_attrs) if has? 'FaktVyd'

        hash
      end
    end
  end
end