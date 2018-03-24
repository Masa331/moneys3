require 'money_s3/builders/base_builder'
require 'money_s3/builders/header_kusovnik_type'
require 'money_s3/builders/child_kusovnik_type'
require 'money_s3/builders/komponenta_kusovnik_type'

module MoneyS3
  module Builders
    class KusovnikType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :header
          root << HeaderKusovnikType.new(attributes[:header], 'Header').builder
        end

        if attributes.key? :child
          root << ChildKusovnikType.new(attributes[:child], 'Child').builder
        end

        if attributes.key? :seznam_komponent
          element = Ox::Element.new('SeznamKomponent')
          attributes[:seznam_komponent].each { |i| element << KomponentaKusovnikType.new(i, 'Komponenta').builder }
          root << element
        end

        root
      end
    end
  end
end