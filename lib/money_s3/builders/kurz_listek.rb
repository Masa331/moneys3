require 'money_s3/builders/base_builder'
require 'money_s3/builders/kurz_type'

module MoneyS3
  module Builders
    class KurzListek
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Banka', data[:banka]) if data.key? :banka
        root << build_element('PorCislo', data[:por_cislo]) if data.key? :por_cislo
        root << build_element('Datum', data[:datum]) if data.key? :datum

        if data.key? :seznam_kurzu
          element = Ox::Element.new('SeznamKurzu')
          data[:seznam_kurzu].each { |i| element << KurzType.new('Kurz', i).builder }
          root << element
        end

        root
      end
    end
  end
end