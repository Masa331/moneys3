module MoneyS3
  module Parsers
    class SeznamZamestnancu
      include ParserCore::BaseParser

      def zamestnanec
        array_of_at(ZamestnanecType, ['Zamestnanec'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zamestnanec] = zamestnanec.map(&:to_h) if has? 'Zamestnanec'

        hash
      end
    end
  end
end