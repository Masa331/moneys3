require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'
require 'money_s3/builders/message_type'

module MoneyS3
  module Builders
    class MsgFirmaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :data
          root << FirmaType.new(attributes[:data], 'Data').builder
        end

        if attributes.key? :osoba
          attributes[:osoba].each { |i| root << MessageType.new(i, 'Osoba').builder }
        end

        root
      end
    end
  end
end