module MoneyS3
  module Builders
    class NormPolozIDType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Poradi', data[:poradi], data[:poradi_attributes]) if data.key? :poradi
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Zkratka', data[:zkratka], data[:zkratka_attributes]) if data.key? :zkratka
        root << build_element('Cena', data[:cena], data[:cena_attributes]) if data.key? :cena
        root << build_element('CenaTyp', data[:cena_typ], data[:cena_typ_attributes]) if data.key? :cena_typ
        root << build_element('SazbaDPH', data[:sazba_dph], data[:sazba_dph_attributes]) if data.key? :sazba_dph
        root << build_element('TextMJ', data[:text_mj], data[:text_mj_attributes]) if data.key? :text_mj
        root << build_element('PocetMJ', data[:pocet_mj], data[:pocet_mj_attributes]) if data.key? :pocet_mj
        root << build_element('PrKont', data[:pr_kont], data[:pr_kont_attributes]) if data.key? :pr_kont
        root << build_element('Cleneni', data[:cleneni], data[:cleneni_attributes]) if data.key? :cleneni
        root << build_element('Stred', data[:stred], data[:stred_attributes]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka

        root
      end
    end
  end
end