module MoneyS3
  module Parsers
    class MsgMzdaType < MessageType
      include ParserCore::BaseParser

      def nepritomnost
        array_of_at(MessageType, ['Nepritomnost'])
      end

      def data
        submodel_at(Data8, 'Data')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:nepritomnost] = nepritomnost.map(&:to_h) if has? 'Nepritomnost'
        hash[:data] = data.to_h if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end