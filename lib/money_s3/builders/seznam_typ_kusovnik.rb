require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class SeznamTypKusovnik
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :typ_kusovnik
          data[:typ_kusovnik].each { |i| root << KusovnikType.new('TypKusovnik', i).builder }
        end

        root
      end
    end
  end
end