module MoneyS3
  module Parsers
    class MessageType
      include ParserCore::BaseParser

      def status
        at 'Status'
      end

      def reference
        submodel_at(ReferenceType, 'Reference')
      end

      def error_info
        array_of_at(ErrorInfoType, ['ErrorInfo'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:status] = status if has? 'Status'
        hash[:reference] = reference.to_h_with_attrs if has? 'Reference'
        hash[:error_info] = error_info.map(&:to_h_with_attrs) if has? 'ErrorInfo'

        hash
      end
    end
  end
end