module MoneyS3
  module Parsers
    class MsgKomponentaType < MessageType
      include BaseParser

      def km_karta
        submodel_at(MessageType, 'KmKarta')
      end

      def sklad
        submodel_at(MessageType, 'Sklad')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'

        hash
        super.merge(hash)
      end
    end
  end
end