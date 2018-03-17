require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/msg_firma_type'
require 'money_s3/parsers/data'
require 'money_s3/parsers/reference_type'
require 'money_s3/parsers/msg_fakt_poloz_type'
require 'money_s3/parsers/message_type'
require 'money_s3/parsers/error_info_type'

module MoneyS3
  module Parsers
    class Import
      include BaseParser

      def status
        at :Status
      end

      def dod_odb
        submodel_at(MsgFirmaType, :DodOdb)
      end

      def konec_prij
        submodel_at(MsgFirmaType, :KonecPrij)
      end

      def data
        submodel_at(Data, :Data)
      end

      def reference
        submodel_at(ReferenceType, :Reference)
      end

      def polozka
        array_of_at(MsgFaktPolozType, [:Polozka])
      end

      def uhrada
        array_of_at(MessageType, [:Uhrada])
      end

      def error_info
        array_of_at(ErrorInfoType, [:ErrorInfo])
      end

      def to_h
        { status: status,
          dod_odb: dod_odb.to_h,
          konec_prij: konec_prij.to_h,
          data: data.to_h,
          reference: reference.to_h,
          polozka: polozka.map(&:to_h),
          uhrada: uhrada.map(&:to_h),
          error_info: error_info.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end