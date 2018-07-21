module MoneyS3
  module Parsers
    class SeznamMezd
      include ParserCore::BaseParser

      def mzda
        array_of_at(MzdaType, ['Mzda'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:mzda] = mzda.map(&:to_h) if has? 'Mzda'

        hash
      end
    end
  end
end