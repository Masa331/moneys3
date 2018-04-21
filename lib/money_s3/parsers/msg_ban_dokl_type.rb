module MoneyS3
  module Parsers
    class MsgBanDoklType < MessageType
      include BaseParser

      def adresa
        submodel_at(MessageType, 'Adresa')
      end

      def ucet
        submodel_at(MessageType, 'Ucet')
      end

      def uhrada
        array_of_at(MessageType, ['Uhrada'])
      end

      def data
        submodel_at(BanDoklType, 'Data')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:ucet] = ucet.to_h_with_attrs if has? 'Ucet'
        hash[:uhrada] = uhrada.map(&:to_h_with_attrs) if has? 'Uhrada'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end