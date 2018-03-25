require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/message_type'

module MoneyS3
  module Parsers
    class MsgPolozType
      include BaseParser

      def km_karta
        submodel_at(MessageType, 'KmKarta')
      end

      def sklad
        submodel_at(MessageType, 'Sklad')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:sklad] = sklad.to_h if has? 'Sklad'

        hash
      end
    end
  end
end