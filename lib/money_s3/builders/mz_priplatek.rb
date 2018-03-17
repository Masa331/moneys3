require 'money_s3/builders/base_builder'
require 'money_s3/builders/typ_priplatku_type'

module MoneyS3
  module Builders
    class MzPriplatek
      include BaseBuilder

      attr_accessor :prip_hodin, :typ_priplatku

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('PripHodin') << prip_hodin) if prip_hodin
        root << TypPriplatkuType.new(typ_priplatku, 'TypPriplatku').builder if typ_priplatku

        root
      end
    end
  end
end