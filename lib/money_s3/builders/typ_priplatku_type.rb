require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class TypPriplatkuType
      include BaseBuilder

      attr_accessor :zkratka, :popis, :poznamka, :druh, :sazba, :typ, :auto_load, :pr_nah_off

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkratka') << zkratka) if zkratka
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('Druh') << druh) if druh
        root << (Ox::Element.new('Sazba') << sazba) if sazba
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('AutoLoad') << auto_load) if auto_load
        root << (Ox::Element.new('PrNahOff') << pr_nah_off) if pr_nah_off

        root
      end
    end
  end
end