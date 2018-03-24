require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VysledekOdesl
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :chyba
          element = Ox::Element.new('Chyba')
          element << attributes[:chyba] if attributes[:chyba]
          root << element
        end

        if attributes.key? :varovani
          attributes[:varovani].map { |i| Ox::Element.new('Varovani') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end