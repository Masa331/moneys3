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

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :status
          element = Ox::Element.new('Status')
          element << attributes[:status] if attributes[:status]
          root << element
        end

        if attributes.key? :dod_odb
          root << MsgFirmaType.new(attributes[:dod_odb], 'DodOdb').builder
        end

        if attributes.key? :konec_prij
          root << MsgFirmaType.new(attributes[:konec_prij], 'KonecPrij').builder
        end

        if attributes.key? :data
          root << Data.new(attributes[:data], 'Data').builder
        end

        if attributes.key? :reference
          root << ReferenceType.new(attributes[:reference], 'Reference').builder
        end

        if attributes.key? :polozka
          attributes[:polozka].each { |i| root << MsgFaktPolozType.new(i, 'Polozka').builder }
        end

        if attributes.key? :uhrada
          attributes[:uhrada].each { |i| root << MessageType.new(i, 'Uhrada').builder }
        end

        if attributes.key? :error_info
          attributes[:error_info].each { |i| root << ErrorInfoType.new(i, 'ErrorInfo').builder }
        end

        root
      end
    end
  end
end