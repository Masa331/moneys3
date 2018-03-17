require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class NormPolozIDType
      include BaseBuilder

      attr_accessor :poradi, :popis, :zkratka, :cena, :cena_typ, :sazba_dph, :text_mj, :pocet_mj, :pr_kont, :cleneni, :stred, :zakazka, :cinnost, :poznamka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Zkratka') << zkratka) if zkratka
        root << (Ox::Element.new('Cena') << cena) if cena
        root << (Ox::Element.new('CenaTyp') << cena_typ) if cena_typ
        root << (Ox::Element.new('SazbaDPH') << sazba_dph) if sazba_dph
        root << (Ox::Element.new('TextMJ') << text_mj) if text_mj
        root << (Ox::Element.new('PocetMJ') << pocet_mj) if pocet_mj
        root << (Ox::Element.new('PrKont') << pr_kont) if pr_kont
        root << (Ox::Element.new('Cleneni') << cleneni) if cleneni
        root << (Ox::Element.new('Stred') << stred) if stred
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka

        root
      end
    end
  end
end