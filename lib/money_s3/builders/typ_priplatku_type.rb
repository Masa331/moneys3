require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class TypPriplatkuType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkratka
          element = Ox::Element.new('Zkratka')
          element << attributes[:zkratka] if attributes[:zkratka]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :druh
          element = Ox::Element.new('Druh')
          element << attributes[:druh] if attributes[:druh]
          root << element
        end

        if attributes.key? :sazba
          element = Ox::Element.new('Sazba')
          element << attributes[:sazba] if attributes[:sazba]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :auto_load
          element = Ox::Element.new('AutoLoad')
          element << attributes[:auto_load] if attributes[:auto_load]
          root << element
        end

        if attributes.key? :pr_nah_off
          element = Ox::Element.new('PrNahOff')
          element << attributes[:pr_nah_off] if attributes[:pr_nah_off]
          root << element
        end

        root
      end
    end
  end
end