require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class AdresaType
      include BaseBuilder

      attr_accessor :ulice, :misto, :psc, :stat, :kod_statu

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Ulice') << ulice) if ulice
        root << (Ox::Element.new('Misto') << misto) if misto
        root << (Ox::Element.new('PSC') << psc) if psc
        root << (Ox::Element.new('Stat') << stat) if stat
        root << (Ox::Element.new('KodStatu') << kod_statu) if kod_statu

        root
      end
    end
  end
end