require 'money_s3/builders/base_builder'
require 'money_s3/builders/msg_firma_type'
require 'money_s3/builders/data'
require 'money_s3/builders/reference_type'
require 'money_s3/builders/msg_fakt_poloz_type'
require 'money_s3/builders/message_type'
require 'money_s3/builders/error_info_type'

module MoneyS3
  module Builders
    class Import
      include BaseBuilder

      attr_accessor :status, :dod_odb, :konec_prij, :data, :reference, :polozka, :uhrada, :error_info

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Status') << status) if status
        root << MsgFirmaType.new(dod_odb, 'DodOdb').builder if dod_odb
        root << MsgFirmaType.new(konec_prij, 'KonecPrij').builder if konec_prij
        root << Data.new(data, 'Data').builder if data
        root << ReferenceType.new(reference, 'Reference').builder if reference

        if polozka
          polozka.each { |i| root << MsgFaktPolozType.new(i, 'Polozka').builder }
        end

        if uhrada
          uhrada.each { |i| root << MessageType.new(i, 'Uhrada').builder }
        end

        if error_info
          error_info.each { |i| root << ErrorInfoType.new(i, 'ErrorInfo').builder }
        end

        root
      end
    end
  end
end