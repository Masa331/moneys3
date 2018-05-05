module MoneyS3
  module Parsers
    class CinnostType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def nazev
        at 'Nazev'
      end

      def pozn
        at 'Pozn'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end