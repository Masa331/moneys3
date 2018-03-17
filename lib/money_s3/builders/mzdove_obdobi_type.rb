require 'money_s3/builders/base_builder'
require 'money_s3/builders/prac_pomer'

module MoneyS3
  module Builders
    class MzdoveObdobiType
      include BaseBuilder

      attr_accessor :mesic, :rok, :funkce, :prac_pomer

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Mesic') << mesic) if mesic
        root << (Ox::Element.new('Rok') << rok) if rok
        root << (Ox::Element.new('Funkce') << funkce) if funkce
        root << PracPomer.new(prac_pomer, 'PracPomer').builder if prac_pomer

        root
      end
    end
  end
end