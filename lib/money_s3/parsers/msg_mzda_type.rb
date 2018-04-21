module MoneyS3
  module Parsers
    class MsgMzdaType < MessageType
      include BaseParser

      def nepritomnost
        array_of_at(MessageType, ['Nepritomnost'])
      end

      def data
        submodel_at(Data8, 'Data')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:nepritomnost] = nepritomnost.map(&:to_h_with_attrs) if has? 'Nepritomnost'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end