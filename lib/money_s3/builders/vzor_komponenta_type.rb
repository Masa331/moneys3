require 'money_s3/builders/base_builder'
require 'money_s3/builders/header_kusovnik_type'
require 'money_s3/builders/child_kusovnik_type'
require 'money_s3/builders/km_karta_type'

module MoneyS3
  module Builders
    class VzorKomponentaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :header
          root << HeaderKusovnikType.new(attributes[:header], 'Header').builder
        end

        if attributes.key? :child
          root << ChildKusovnikType.new(attributes[:child], 'Child').builder
        end

        if attributes.key? :km_karta
          root << KmKartaType.new(attributes[:km_karta], 'KmKarta').builder
        end

        root
      end
    end
  end
end