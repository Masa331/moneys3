module MoneyS3
  module Parsers
    class SeznamFaktVyd
      include ParserCore::BaseParser

      def fakt_vyd
        array_of_at(FaktVyd, ['FaktVyd'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:fakt_vyd] = fakt_vyd.map(&:to_h) if has? 'FaktVyd'

        hash
      end
    end
  end
end