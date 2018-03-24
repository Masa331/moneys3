require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class AdresaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :ulice
          element = Ox::Element.new('Ulice')
          element << attributes[:ulice] if attributes[:ulice]
          root << element
        end

        if attributes.key? :misto
          element = Ox::Element.new('Misto')
          element << attributes[:misto] if attributes[:misto]
          root << element
        end

        if attributes.key? :psc
          element = Ox::Element.new('PSC')
          element << attributes[:psc] if attributes[:psc]
          root << element
        end

        if attributes.key? :stat
          element = Ox::Element.new('Stat')
          element << attributes[:stat] if attributes[:stat]
          root << element
        end

        if attributes.key? :kod_statu
          element = Ox::Element.new('KodStatu')
          element << attributes[:kod_statu] if attributes[:kod_statu]
          root << element
        end

        root
      end
    end
  end
end