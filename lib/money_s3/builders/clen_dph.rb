require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ClenDPH
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :datum_od
          element = Ox::Element.new('DatumOd')
          element << attributes[:datum_od] if attributes[:datum_od]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :kolonka
          element = Ox::Element.new('Kolonka')
          element << attributes[:kolonka] if attributes[:kolonka]
          root << element
        end

        if attributes.key? :kod_plneni
          element = Ox::Element.new('KodPlneni')
          element << attributes[:kod_plneni] if attributes[:kod_plneni]
          root << element
        end

        if attributes.key? :bez_odpoctu
          element = Ox::Element.new('BezOdpoctu')
          element << attributes[:bez_odpoctu] if attributes[:bez_odpoctu]
          root << element
        end

        if attributes.key? :no_koef
          element = Ox::Element.new('NoKoef')
          element << attributes[:no_koef] if attributes[:no_koef]
          root << element
        end

        if attributes.key? :majetek
          element = Ox::Element.new('Majetek')
          element << attributes[:majetek] if attributes[:majetek]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        root
      end
    end
  end
end