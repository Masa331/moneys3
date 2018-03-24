require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class KurzType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :banka
          element = Ox::Element.new('Banka')
          element << attributes[:banka] if attributes[:banka]
          root << element
        end

        if attributes.key? :datum
          element = Ox::Element.new('Datum')
          element << attributes[:datum] if attributes[:datum]
          root << element
        end

        if attributes.key? :kod
          element = Ox::Element.new('Kod')
          element << attributes[:kod] if attributes[:kod]
          root << element
        end

        if attributes.key? :zeme
          element = Ox::Element.new('Zeme')
          element << attributes[:zeme] if attributes[:zeme]
          root << element
        end

        if attributes.key? :mnozstvi
          element = Ox::Element.new('Mnozstvi')
          element << attributes[:mnozstvi] if attributes[:mnozstvi]
          root << element
        end

        if attributes.key? :nb_stred
          element = Ox::Element.new('NBStred')
          element << attributes[:nb_stred] if attributes[:nb_stred]
          root << element
        end

        if attributes.key? :devizy_nakup
          element = Ox::Element.new('DevizyNakup')
          element << attributes[:devizy_nakup] if attributes[:devizy_nakup]
          root << element
        end

        if attributes.key? :devizy_prodej
          element = Ox::Element.new('DevizyProdej')
          element << attributes[:devizy_prodej] if attributes[:devizy_prodej]
          root << element
        end

        if attributes.key? :valuty_nakup
          element = Ox::Element.new('ValutyNakup')
          element << attributes[:valuty_nakup] if attributes[:valuty_nakup]
          root << element
        end

        if attributes.key? :valuty_prodej
          element = Ox::Element.new('ValutyProdej')
          element << attributes[:valuty_prodej] if attributes[:valuty_prodej]
          root << element
        end

        root
      end
    end
  end
end