require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'

module MoneyS3
  module Builders
    class ValutyHraz
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Castka', data[:castka]) if data.key? :castka

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end

        root
      end
    end
  end
end