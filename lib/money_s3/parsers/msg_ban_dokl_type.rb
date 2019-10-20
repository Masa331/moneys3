module MoneyS3
  module Parsers
    class MsgBanDoklType < MessageType
      include ParserCore::BaseParser

      def adresa
        submodel_at(MessageType, 'Adresa')
      end

      def ucet
        submodel_at(MessageType, 'Ucet')
      end

      def uhrada
        array_of_at(MessageType, ['Uhrada'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:ucet] = ucet.to_h if has? 'Ucet'
        hash[:uhrada] = uhrada.map(&:to_h) if has? 'Uhrada'

        hash
        super.merge(hash)
      end
    end
  end
end