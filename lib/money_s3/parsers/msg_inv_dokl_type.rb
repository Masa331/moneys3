module MoneyS3
  module Parsers
    class MsgInvDoklType < MessageType
      include BaseParser

      def polozka
        array_of_at(MsgPolozType, ['Polozka'])
      end

      def data
        submodel_at(InvDoklType, 'Data')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:polozka] = polozka.map(&:to_h_with_attrs) if has? 'Polozka'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end