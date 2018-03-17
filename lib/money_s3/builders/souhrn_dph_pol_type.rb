require 'money_s3/builders/base_builder'
require 'money_s3/builders/valuty'

module MoneyS3
  module Builders
    class SouhrnDPHPolType
      include BaseBuilder

      attr_accessor :zaklad_mj, :dph_mj, :zaklad, :dph, :valuty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zaklad_MJ') << zaklad_mj) if zaklad_mj
        root << (Ox::Element.new('DPH_MJ') << dph_mj) if dph_mj
        root << (Ox::Element.new('Zaklad') << zaklad) if zaklad
        root << (Ox::Element.new('DPH') << dph) if dph
        root << Valuty.new(valuty, 'Valuty').builder if valuty

        root
      end
    end
  end
end