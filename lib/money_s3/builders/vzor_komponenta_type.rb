require 'money_s3/builders/base_builder'
require 'money_s3/builders/header_kusovnik_type'
require 'money_s3/builders/child_kusovnik_type'
require 'money_s3/builders/km_karta_type'

module MoneyS3
  module Builders
    class VzorKomponentaType
      include BaseBuilder

      attr_accessor :header, :child, :km_karta

      def builder
        root = Ox::Element.new(element_name)

        root << HeaderKusovnikType.new(header, 'Header').builder if header
        root << ChildKusovnikType.new(child, 'Child').builder if child
        root << KmKartaType.new(km_karta, 'KmKarta').builder if km_karta

        root
      end
    end
  end
end