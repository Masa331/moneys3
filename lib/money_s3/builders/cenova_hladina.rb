require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'

module MoneyS3
  module Builders
    class CenovaHladina
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('Skup', data[:skup]) if data.key? :skup
        root << build_element('Ceny', data[:ceny]) if data.key? :ceny

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end

        root
      end
    end
  end
end