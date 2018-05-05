module MoneyS3
  module Parsers
    class PrepravceType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def nazev
        at 'Nazev'
      end

      def poznamka
        at 'Poznamka'
      end

      def kod_odesil
        at 'KodOdesil'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:kod_odesil] = kod_odesil if has? 'KodOdesil'

        hash
      end
    end
  end
end