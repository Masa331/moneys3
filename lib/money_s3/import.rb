require 'money_s3/base_element'
require 'money_s3/msg_firma_type'
require 'money_s3/data'
require 'money_s3/reference_type'
require 'money_s3/msg_fakt_poloz_type'
require 'money_s3/message_type'
require 'money_s3/error_info_type'

module MoneyS3
  class Import
    include BaseElement

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
