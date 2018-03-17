require 'money_s3/builders/base_builder'
require 'money_s3/builders/header_kusovnik_type'
require 'money_s3/builders/child_kusovnik_type'
require 'money_s3/builders/komponenta_kusovnik_type'

module MoneyS3
  module Builders
    class KusovnikType
      include BaseBuilder

      attr_accessor :header, :child, :seznam_komponent

      def builder
        root = Ox::Element.new(element_name)

        root << HeaderKusovnikType.new(header, 'Header').builder if header
        root << ChildKusovnikType.new(child, 'Child').builder if child

        if seznam_komponent
          element = Ox::Element.new('SeznamKomponent')
          seznam_komponent.each { |i| element << KomponentaKusovnikType.new(i, 'Komponenta').builder }
          root << element
        end

        root
      end
    end
  end
end