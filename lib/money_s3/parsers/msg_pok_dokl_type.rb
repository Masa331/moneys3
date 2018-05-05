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

      def data
        submodel_at(PokDoklType, 'Data')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:polozka] = polozka.map(&:to_h_with_attrs) if has? 'Polozka'
        hash[:uhrada] = uhrada.map(&:to_h_with_attrs) if has? 'Uhrada'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end