module MoneyS3
  module Parsers
    class MessageType
      include ParserCore::BaseParser

      def status
        at 'Status'
      end

      def status_attributes
        attributes_at 'Status'
      end

      def reference
        array_of_at(String, ['Reference', 'ID'])
      end

      def error_info
        array_of_at(ErrorInfoType, ['ErrorInfo'])
      end

      def data
        at 'Data'
      end

      def data_attributes
        attributes_at 'Data'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:status] = status if has? 'Status'
        hash[:status_attributes] = status_attributes if has? 'Status'
        hash[:reference] = reference if has? 'Reference'
        hash[:error_info] = error_info.map(&:to_h) if has? 'ErrorInfo'
        hash[:data] = data if has? 'Data'
        hash[:data_attributes] = data_attributes if has? 'Data'

        hash
      end
    end
  end
end