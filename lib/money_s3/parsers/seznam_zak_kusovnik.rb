module MoneyS3
  module Parsers
    class SeznamZakKusovnik < SeznamType
      include BaseParser

      def zak_kusovnik
        array_of_at(KusovnikType, ['ZakKusovnik'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zak_kusovnik] = zak_kusovnik.map(&:to_h_with_attrs) if has? 'ZakKusovnik'

        hash
        super.merge(hash)
      end
    end
  end
end