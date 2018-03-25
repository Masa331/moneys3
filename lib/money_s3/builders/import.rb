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
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Status', data[:status]) if data.key? :status

        if data.key? :dod_odb
          root << MsgFirmaType.new('DodOdb', data[:dod_odb]).builder
        end

        if data.key? :konec_prij
          root << MsgFirmaType.new('KonecPrij', data[:konec_prij]).builder
        end

        if data.key? :data
          root << Data.new('Data', data[:data]).builder
        end

        if data.key? :reference
          root << ReferenceType.new('Reference', data[:reference]).builder
        end

        if data.key? :polozka
          data[:polozka].each { |i| root << MsgFaktPolozType.new('Polozka', i).builder }
        end

        if data.key? :uhrada
          data[:uhrada].each { |i| root << MessageType.new('Uhrada', i).builder }
        end

        if data.key? :error_info
          data[:error_info].each { |i| root << ErrorInfoType.new('ErrorInfo', i).builder }
        end

        root
      end
    end
  end
end