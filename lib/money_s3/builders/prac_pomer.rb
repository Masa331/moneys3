require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PracPomer
      include BaseBuilder

      attr_accessor :zkrat, :popis, :eldp_kod, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('ELDPKod') << eldp_kod) if eldp_kod
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end