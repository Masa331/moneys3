require 'money_s3/builders/base_builder'
require 'money_s3/builders/zasoba'

module MoneyS3
  module Builders
    class SeznamZasoba
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :zasoba
          data[:zasoba].each { |i| root << Zasoba.new('Zasoba', i).builder }
        end

        root
      end
    end
  end
end