require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class NormPolozUDType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :cena
          element = Ox::Element.new('Cena')
          element << attributes[:cena] if attributes[:cena]
          root << element
        end

        if attributes.key? :valuty
          element = Ox::Element.new('Valuty')
          element << attributes[:valuty] if attributes[:valuty]
          root << element
        end

        if attributes.key? :cena_typ
          element = Ox::Element.new('CenaTyp')
          element << attributes[:cena_typ] if attributes[:cena_typ]
          root << element
        end

        if attributes.key? :sazba_dph
          element = Ox::Element.new('SazbaDPH')
          element << attributes[:sazba_dph] if attributes[:sazba_dph]
          root << element
        end

        if attributes.key? :text_mj
          element = Ox::Element.new('TextMJ')
          element << attributes[:text_mj] if attributes[:text_mj]
          root << element
        end

        if attributes.key? :pocet_mj
          element = Ox::Element.new('PocetMJ')
          element << attributes[:pocet_mj] if attributes[:pocet_mj]
          root << element
        end

        if attributes.key? :pr_kont
          element = Ox::Element.new('PrKont')
          element << attributes[:pr_kont] if attributes[:pr_kont]
          root << element
        end

        if attributes.key? :cleneni
          element = Ox::Element.new('Cleneni')
          element << attributes[:cleneni] if attributes[:cleneni]
          root << element
        end

        if attributes.key? :predm_pln
          element = Ox::Element.new('PredmPln')
          element << attributes[:predm_pln] if attributes[:predm_pln]
          root << element
        end

        if attributes.key? :stred
          element = Ox::Element.new('Stred')
          element << attributes[:stred] if attributes[:stred]
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

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        root
      end
    end
  end
end