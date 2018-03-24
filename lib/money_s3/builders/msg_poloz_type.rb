require 'money_s3/builders/base_builder'
require 'money_s3/builders/message_type'

module MoneyS3
  module Builders
    class MsgPolozType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :km_karta
          root << MessageType.new('KmKarta', data[:km_karta]).builder
        end

        if data.key? :sklad
          root << MessageType.new('Sklad', data[:sklad]).builder
        end

        root
      end
    end
  end
end