module MoneyS3
  module Parsers
    class MsgIntDoklType < MessageType
      include BaseParser

      def adresa
        submodel_at(MessageType, 'Adresa')
      end

      def polozka
        array_of_at(MessageType, ['Polozka'])
      end

      def data
        submodel_at(IntDoklType, 'Data')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:polozka] = polozka.map(&:to_h_with_attrs) if has? 'Polozka'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end