require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class BankSpojeniType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :ucet
          element = Ox::Element.new('Ucet')
          element << attributes[:ucet] if attributes[:ucet]
          root << element
        end

        if attributes.key? :kod_banky
          element = Ox::Element.new('KodBanky')
          element << attributes[:kod_banky] if attributes[:kod_banky]
          root << element
        end

        if attributes.key? :mena
          element = Ox::Element.new('Mena')
          element << attributes[:mena] if attributes[:mena]
          root << element
        end

        if attributes.key? :ucel
          element = Ox::Element.new('Ucel')
          element << attributes[:ucel] if attributes[:ucel]
          root << element
        end

        root
      end
    end
  end
end