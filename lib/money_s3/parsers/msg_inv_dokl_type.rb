module MoneyS3
  module Parsers
    class MsgInvDoklType < MessageType
      include ParserCore::BaseParser

      def polozka
        array_of_at(MsgPolozType, ['Polozka'])
      end

      def data
        submodel_at(InvDoklType, 'Data')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'
        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end