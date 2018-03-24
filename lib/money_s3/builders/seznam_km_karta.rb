require 'money_s3/builders/base_builder'
require 'money_s3/builders/km_karta'

module MoneyS3
  module Builders
    class SeznamKmKarta
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :km_karta
          data[:km_karta].each { |i| root << KmKarta.new('KmKarta', i).builder }
        end

        root
      end
    end
  end
end