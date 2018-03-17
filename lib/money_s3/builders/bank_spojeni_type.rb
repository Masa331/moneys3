require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class BankSpojeniType
      include BaseBuilder

      attr_accessor :ucet, :kod_banky, :mena, :ucel

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Ucet') << ucet) if ucet
        root << (Ox::Element.new('KodBanky') << kod_banky) if kod_banky
        root << (Ox::Element.new('Mena') << mena) if mena
        root << (Ox::Element.new('Ucel') << ucel) if ucel

        root
      end
    end
  end
end