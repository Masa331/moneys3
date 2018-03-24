require 'money_s3/builders/base_builder'
require 'money_s3/builders/vyrobka'

module MoneyS3
  module Builders
    class SeznamVyrobka
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :vyrobka
          data[:vyrobka].each { |i| root << Vyrobka.new('Vyrobka', i).builder }
        end

        root
      end
    end
  end
end