require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class MenaType
      include BaseBuilder

      attr_accessor :kod, :mnozstvi, :kurs

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Kod') << kod) if kod
        root << (Ox::Element.new('Mnozstvi') << mnozstvi) if mnozstvi
        root << (Ox::Element.new('Kurs') << kurs) if kurs

        root
      end
    end
  end
end