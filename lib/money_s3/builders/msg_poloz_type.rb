require 'money_s3/builders/base_builder'
require 'money_s3/builders/message_type'

module MoneyS3
  module Builders
    class MsgPolozType
      include BaseBuilder

      attr_accessor :km_karta, :sklad

      def builder
        root = Ox::Element.new(element_name)

        root << MessageType.new(km_karta, 'KmKarta').builder if km_karta
        root << MessageType.new(sklad, 'Sklad').builder if sklad

        root
      end
    end
  end
end