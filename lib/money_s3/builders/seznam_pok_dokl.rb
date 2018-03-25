require 'money_s3/builders/base_builder'
require 'money_s3/builders/pok_dokl'

module MoneyS3
  module Builders
    class SeznamPokDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :pok_dokl
          data[:pok_dokl].each { |i| root << PokDokl.new('PokDokl', i).builder }
        end

        root
      end
    end
  end
end