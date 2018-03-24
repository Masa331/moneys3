require 'money_s3/builders/base_builder'
require 'money_s3/builders/prac_pomer'

module MoneyS3
  module Builders
    class MzdoveObdobiType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Mesic', data[:mesic]) if data.key? :mesic
        root << build_element('Rok', data[:rok]) if data.key? :rok
        root << build_element('Funkce', data[:funkce]) if data.key? :funkce

        if data.key? :prac_pomer
          root << PracPomer.new('PracPomer', data[:prac_pomer]).builder
        end

        root
      end
    end
  end
end