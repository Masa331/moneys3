require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class TelefonType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Pred', data[:pred]) if data.key? :pred
        root << build_element('Cislo', data[:cislo]) if data.key? :cislo
        root << build_element('Klap', data[:klap]) if data.key? :klap

        root
      end
    end
  end
end
