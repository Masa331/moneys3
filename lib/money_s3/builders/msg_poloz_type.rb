require 'money_s3/builders/base_builder'
require 'money_s3/builders/message_type'

module MoneyS3
  module Builders
    class MsgPolozType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :km_karta
          root << MessageType.new(attributes[:km_karta], 'KmKarta').builder
        end

        if attributes.key? :sklad
          root << MessageType.new(attributes[:sklad], 'Sklad').builder
        end

        root
      end
    end
  end
end