require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UhradaPduhrada
      include BaseBuilder

      attr_accessor :poradi, :kontace, :stredisko, :zakazka, :cinnost, :zaklad, :dphzs, :dphss, :wl_zaklady, :wldph1, :wldph2

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('Kontace') << kontace) if kontace
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('Zaklad') << zaklad) if zaklad
        root << (Ox::Element.new('DPHZS') << dphzs) if dphzs
        root << (Ox::Element.new('DPHSS') << dphss) if dphss
        root << (Ox::Element.new('WLZaklady') << wl_zaklady) if wl_zaklady
        root << (Ox::Element.new('WLDPH1') << wldph1) if wldph1
        root << (Ox::Element.new('WLDPH2') << wldph2) if wldph2

        root
      end
    end
  end
end