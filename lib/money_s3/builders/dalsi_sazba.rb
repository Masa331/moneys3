require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class DalsiSazba
      include BaseBuilder

      attr_accessor :popis, :hladina_dph, :sazba, :zaklad, :dph

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('HladinaDPH') << hladina_dph) if hladina_dph
        root << (Ox::Element.new('Sazba') << sazba) if sazba
        root << (Ox::Element.new('Zaklad') << zaklad) if zaklad
        root << (Ox::Element.new('DPH') << dph) if dph

        root
      end
    end
  end
end