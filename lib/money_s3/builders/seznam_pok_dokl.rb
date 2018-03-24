require 'money_s3/builders/base_builder'
require 'money_s3/builders/pok_dokl'

module MoneyS3
  module Builders
    class SeznamPokDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :pok_dokl
          attributes[:pok_dokl].each { |i| root << PokDokl.new(i, 'PokDokl').builder }
        end

        root
      end
    end
  end
end