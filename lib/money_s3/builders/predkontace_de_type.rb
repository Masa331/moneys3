require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PredkontaceDEType
      include BaseBuilder

      attr_accessor :zkrat, :popis, :typ, :poh_zak, :zauct_dph, :cleneni, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('PohZak') << poh_zak) if poh_zak
        root << (Ox::Element.new('ZauctDPH') << zauct_dph) if zauct_dph
        root << (Ox::Element.new('Cleneni') << cleneni) if cleneni
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end