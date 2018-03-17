require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VysledekOdesl
      include BaseBuilder

      attr_accessor :chyba, :varovani

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Chyba') << chyba) if chyba

        if varovani
          varovani.map { |i| Ox::Element.new('Varovani') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end