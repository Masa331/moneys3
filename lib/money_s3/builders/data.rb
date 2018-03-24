require 'money_s3/builders/base_builder'
require 'money_s3/builders/faktura_type'

module MoneyS3
  module Builders
    class Data
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :fakt_vyd
          root << FakturaType.new(attributes[:fakt_vyd], 'FaktVyd').builder
        end

        if attributes.key? :fakt_prij
          root << FakturaType.new(attributes[:fakt_prij], 'FaktPrij').builder
        end

        root
      end
    end
  end
end