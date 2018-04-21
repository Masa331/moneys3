module MoneyS3
  module Parsers
    class MsgKmKartaType < MessageType
      include BaseParser

      def komponenta
        array_of_at(MsgKomponentaType, ['Komponenta'])
      end

      def data
        submodel_at(KmKartaType, 'Data')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:komponenta] = komponenta.map(&:to_h_with_attrs) if has? 'Komponenta'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end