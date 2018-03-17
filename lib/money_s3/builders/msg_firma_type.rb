require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'
require 'money_s3/builders/message_type'

module MoneyS3
  module Builders
    class MsgFirmaType
      include BaseBuilder

      attr_accessor :data, :osoba

      def builder
        root = Ox::Element.new(element_name)

        root << FirmaType.new(data, 'Data').builder if data

        if osoba
          osoba.each { |i| root << MessageType.new(i, 'Osoba').builder }
        end

        root
      end
    end
  end
end