module MoneyS3
  module Builders
    class StavZasobyType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zasoba', data[:zasoba]) if data.key? :zasoba
        root << build_element('Rezervace', data[:rezervace]) if data.key? :rezervace
        root << build_element('Objednano', data[:objednano]) if data.key? :objednano

        root
      end
    end
  end
end