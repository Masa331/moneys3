require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PredkontaceDEType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
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

        if attributes.key? :poh_zak
          element = Ox::Element.new('PohZak')
          element << attributes[:poh_zak] if attributes[:poh_zak]
          root << element
        end

        if attributes.key? :zauct_dph
          element = Ox::Element.new('ZauctDPH')
          element << attributes[:zauct_dph] if attributes[:zauct_dph]
          root << element
        end

        if attributes.key? :cleneni
          element = Ox::Element.new('Cleneni')
          element << attributes[:cleneni] if attributes[:cleneni]
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