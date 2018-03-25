require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class SkupinaKusovnikType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkratka', data[:zkratka]) if data.key? :zkratka
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka

        root
      end
    end
  end
end