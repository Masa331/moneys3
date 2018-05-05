module MoneyS3
  module Parsers
    class SeznamMezd < SeznamType
      include ParserCore::BaseParser

      def mzda
        array_of_at(MzdaType, ['Mzda'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:mzda] = mzda.map(&:to_h_with_attrs) if has? 'Mzda'

        hash
        super.merge(hash)
      end
    end
  end
end