module MoneyS3
  module Parsers
    class MsgCinnostType < MessageType
      include ParserCore::BaseParser

      def data
        submodel_at(CinnostType, 'Data')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end