require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/firma_type'
require 'money_s3/parsers/message_type'

module MoneyS3
  module Parsers
    class MsgFirmaType
      include BaseParser

      def data
        submodel_at(FirmaType, :Data)
      end

      def osoba
        array_of_at(MessageType, [:Osoba])
      end

      def to_h
        { data: data.to_h,
          osoba: osoba.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end