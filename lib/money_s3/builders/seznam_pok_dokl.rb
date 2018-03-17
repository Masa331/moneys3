require 'money_s3/builders/base_builder'
require 'money_s3/builders/pok_dokl'

module MoneyS3
  module Builders
    class SeznamPokDokl
      include BaseBuilder

      attr_accessor :pok_dokl

      def builder
        root = Ox::Element.new(element_name)

        if pok_dokl
          pok_dokl.each { |i| root << PokDokl.new(i, 'PokDokl').builder }
        end

        root
      end
    end
  end
end