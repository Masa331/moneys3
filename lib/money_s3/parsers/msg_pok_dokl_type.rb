module MoneyS3
  module Parsers
    class MsgPokDoklType < MessageType
      include ParserCore::BaseParser

      def adresa
        submodel_at(MessageType, 'Adresa')
      end

      def polozka
        array_of_at(MessageType, ['Polozka'])
      end

      def uhrada
        array_of_at(MessageType, ['Uhrada'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'
        hash[:uhrada] = uhrada.map(&:to_h) if has? 'Uhrada'

        hash
        super.merge(hash)
      end
    end
  end
end