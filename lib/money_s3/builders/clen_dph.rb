require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ClenDPH
      include BaseBuilder

      attr_accessor :zkrat, :datum_od, :popis, :typ, :kolonka, :kod_plneni, :bez_odpoctu, :no_koef, :majetek, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('DatumOd') << datum_od) if datum_od
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Kolonka') << kolonka) if kolonka
        root << (Ox::Element.new('KodPlneni') << kod_plneni) if kod_plneni
        root << (Ox::Element.new('BezOdpoctu') << bez_odpoctu) if bez_odpoctu
        root << (Ox::Element.new('NoKoef') << no_koef) if no_koef
        root << (Ox::Element.new('Majetek') << majetek) if majetek
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end