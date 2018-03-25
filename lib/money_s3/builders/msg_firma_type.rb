require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'
require 'money_s3/builders/message_type'

module MoneyS3
  module Builders
    class MsgFirmaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :data
          root << FirmaType.new('Data', data[:data]).builder
        end

        if data.key? :osoba
          data[:osoba].each { |i| root << MessageType.new('Osoba', i).builder }
        end

        root
      end
    end
  end
end