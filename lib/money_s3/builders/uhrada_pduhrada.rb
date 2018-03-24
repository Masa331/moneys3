require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UhradaPduhrada
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
          root << element
        end

        if attributes.key? :kontace
          element = Ox::Element.new('Kontace')
          element << attributes[:kontace] if attributes[:kontace]
          root << element
        end

        if attributes.key? :stredisko
          element = Ox::Element.new('Stredisko')
          element << attributes[:stredisko] if attributes[:stredisko]
          root << element
        end

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :cinnost
          element = Ox::Element.new('Cinnost')
          element << attributes[:cinnost] if attributes[:cinnost]
          root << element
        end

        if attributes.key? :zaklad
          element = Ox::Element.new('Zaklad')
          element << attributes[:zaklad] if attributes[:zaklad]
          root << element
        end

        if attributes.key? :dphzs
          element = Ox::Element.new('DPHZS')
          element << attributes[:dphzs] if attributes[:dphzs]
          root << element
        end

        if attributes.key? :dphss
          element = Ox::Element.new('DPHSS')
          element << attributes[:dphss] if attributes[:dphss]
          root << element
        end

        if attributes.key? :wl_zaklady
          element = Ox::Element.new('WLZaklady')
          element << attributes[:wl_zaklady] if attributes[:wl_zaklady]
          root << element
        end

        if attributes.key? :wldph1
          element = Ox::Element.new('WLDPH1')
          element << attributes[:wldph1] if attributes[:wldph1]
          root << element
        end

        if attributes.key? :wldph2
          element = Ox::Element.new('WLDPH2')
          element << attributes[:wldph2] if attributes[:wldph2]
          root << element
        end

        root
      end
    end
  end
end