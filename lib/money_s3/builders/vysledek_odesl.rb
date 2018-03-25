require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VysledekOdesl
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Chyba', data[:chyba]) if data.key? :chyba

        if data.key? :varovani
          data[:varovani].map { |i| Ox::Element.new('Varovani') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end