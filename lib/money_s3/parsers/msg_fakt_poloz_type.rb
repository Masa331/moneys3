module MoneyS3
  module Parsers
    class MsgFaktPolozType < MessageType
      include ParserCore::BaseParser

      def skl_polozka
        submodel_at(MsgPolozType, 'SklPolozka')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:skl_polozka] = skl_polozka.to_h if has? 'SklPolozka'

        hash
        super.merge(hash)
      end
    end
  end
end