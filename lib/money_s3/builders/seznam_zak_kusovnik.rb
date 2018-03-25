require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class SeznamZakKusovnik
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :zak_kusovnik
          data[:zak_kusovnik].each { |i| root << KusovnikType.new('ZakKusovnik', i).builder }
        end

        root
      end
    end
  end
end