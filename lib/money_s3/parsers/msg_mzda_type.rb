module MoneyS3
  module Parsers
    class MsgMzdaType < MessageType
      include ParserCore::BaseParser

      def nepritomnost
        array_of_at(MessageType, ['Nepritomnost'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:nepritomnost] = nepritomnost.map(&:to_h) if has? 'Nepritomnost'

        hash
        super.merge(hash)
      end
    end
  end
end