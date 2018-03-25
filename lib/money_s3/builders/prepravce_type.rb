require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PrepravceType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('KodOdesil', data[:kod_odesil]) if data.key? :kod_odesil

        root
      end
    end
  end
end