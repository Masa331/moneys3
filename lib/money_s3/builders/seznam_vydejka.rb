require 'money_s3/builders/base_builder'
require 'money_s3/builders/vydejka'

module MoneyS3
  module Builders
    class SeznamVydejka
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :vydejka
          data[:vydejka].each { |i| root << Vydejka.new('Vydejka', i).builder }
        end

        root
      end
    end
  end
end