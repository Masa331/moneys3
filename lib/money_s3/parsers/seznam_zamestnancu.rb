module MoneyS3
  module Parsers
    class SeznamZamestnancu < SeznamType
      include ParserCore::BaseParser

      def zamestnanec
        array_of_at(ZamestnanecType, ['Zamestnanec'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zamestnanec] = zamestnanec.map(&:to_h_with_attrs) if has? 'Zamestnanec'

        hash
        super.merge(hash)
      end
    end
  end
end