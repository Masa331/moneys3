require 'money_s3/builders/base_builder'
require 'money_s3/builders/eet_type'

module MoneyS3
  module Builders
    class DokladHraz
      include BaseBuilder

      attr_accessor :id_dokladu, :cislo_dokladu, :druh_dokladu, :rok, :eet

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('IDDokladu') << id_dokladu) if id_dokladu
        root << (Ox::Element.new('CisloDokladu') << cislo_dokladu) if cislo_dokladu
        root << (Ox::Element.new('DruhDokladu') << druh_dokladu) if druh_dokladu
        root << (Ox::Element.new('Rok') << rok) if rok
        root << EETType.new(eet, 'EET').builder if eet

        root
      end
    end
  end
end