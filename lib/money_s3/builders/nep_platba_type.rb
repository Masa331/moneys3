require 'money_s3/builders/base_builder'
require 'money_s3/builders/nep_platidlo_type'

module MoneyS3
  module Builders
    class NepPlatbaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('MnozstviMJ', data[:mnozstvi_mj]) if data.key? :mnozstvi_mj
        root << build_element('Castka', data[:castka]) if data.key? :castka

        if data.key? :platidlo
          root << NepPlatidloType.new('Platidlo', data[:platidlo]).builder
        end

        root
      end
    end
  end
end