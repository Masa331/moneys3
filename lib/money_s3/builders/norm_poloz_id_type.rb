module MoneyS3
  module Builders
    class NormPolozIDType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Zkratka', data[:zkratka]) if data.key? :zkratka
        root << build_element('Cena', data[:cena]) if data.key? :cena
        root << build_element('CenaTyp', data[:cena_typ]) if data.key? :cena_typ
        root << build_element('SazbaDPH', data[:sazba_dph]) if data.key? :sazba_dph
        root << build_element('TextMJ', data[:text_mj]) if data.key? :text_mj
        root << build_element('PocetMJ', data[:pocet_mj]) if data.key? :pocet_mj
        root << build_element('PrKont', data[:pr_kont]) if data.key? :pr_kont
        root << build_element('Cleneni', data[:cleneni]) if data.key? :cleneni
        root << build_element('Stred', data[:stred]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka

        root
      end
    end
  end
end