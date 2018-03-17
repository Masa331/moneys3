require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Ucet
      include BaseBuilder

      attr_accessor :zkrat, :ucet, :b_kod, :b_nazev

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Ucet') << ucet) if ucet
        root << (Ox::Element.new('BKod') << b_kod) if b_kod
        root << (Ox::Element.new('BNazev') << b_nazev) if b_nazev

        root
      end
    end
  end
end