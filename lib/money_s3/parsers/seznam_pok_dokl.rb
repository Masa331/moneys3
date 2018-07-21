module MoneyS3
  module Parsers
    class SeznamPokDokl
      include ParserCore::BaseParser

      def pok_dokl
        array_of_at(PokDokl, ['PokDokl'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:pok_dokl] = pok_dokl.map(&:to_h) if has? 'PokDokl'

        hash
      end
    end
  end
end