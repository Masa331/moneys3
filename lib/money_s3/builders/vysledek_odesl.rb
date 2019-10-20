module MoneyS3
  module Builders
    class VysledekOdesl
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Chyba', data[:chyba], data[:chyba_attributes]) if data.key? :chyba
        if data.key? :varovani
          data[:varovani].map { |i| Ox::Element.new('Varovani') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end