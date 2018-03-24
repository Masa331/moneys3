require 'money_s3/builders/base_builder'
require 'money_s3/builders/parametr_type'

module MoneyS3
  module Builders
    class ParametrKartaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('Value', data[:value]) if data.key? :value

        if data.key? :parametr
          root << ParametrType.new('Parametr', data[:parametr]).builder
        end

        root
      end
    end
  end
end