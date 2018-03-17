require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class TelefonType
      include BaseBuilder

      attr_accessor :pred, :cislo, :klap

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Pred') << pred) if pred
        root << (Ox::Element.new('Cislo') << cislo) if cislo
        root << (Ox::Element.new('Klap') << klap) if klap

        root
      end
    end
  end
end