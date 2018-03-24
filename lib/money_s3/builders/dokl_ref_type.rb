require 'money_s3/builders/base_builder'
require 'money_s3/builders/eet_type'

module MoneyS3
  module Builders
    class DoklRefType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :id_dokladu
          element = Ox::Element.new('IDDokladu')
          element << attributes[:id_dokladu] if attributes[:id_dokladu]
          root << element
        end

        if attributes.key? :cislo_dokladu
          element = Ox::Element.new('CisloDokladu')
          element << attributes[:cislo_dokladu] if attributes[:cislo_dokladu]
          root << element
        end

        if attributes.key? :druh_dokladu
          element = Ox::Element.new('DruhDokladu')
          element << attributes[:druh_dokladu] if attributes[:druh_dokladu]
          root << element
        end

        if attributes.key? :rok
          element = Ox::Element.new('Rok')
          element << attributes[:rok] if attributes[:rok]
          root << element
        end

        if attributes.key? :eet
          root << EETType.new(attributes[:eet], 'EET').builder
        end

        root
      end
    end
  end
end