require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad'

module MoneyS3
  module Builders
    class SeznamSkladu
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :sklad
          data[:sklad].each { |i| root << Sklad.new('Sklad', i).builder }
        end

        root
      end
    end
  end
end