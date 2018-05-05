module MoneyS3
  module Parsers
    class SeznamPokDokl < SeznamType
      include ParserCore::BaseParser

      def pok_dokl
        array_of_at(PokDokl, ['PokDokl'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:pok_dokl] = pok_dokl.map(&:to_h_with_attrs) if has? 'PokDokl'

        hash
        super.merge(hash)
      end
    end
  end
end