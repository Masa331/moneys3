require 'money_s3/builders/base_builder'
require 'money_s3/builders/faktura_type'

module MoneyS3
  module Builders
    class Data
      include BaseBuilder

      attr_accessor :fakt_vyd, :fakt_prij

      def builder
        root = Ox::Element.new(element_name)

        root << FakturaType.new(fakt_vyd, 'FaktVyd').builder if fakt_vyd
        root << FakturaType.new(fakt_prij, 'FaktPrij').builder if fakt_prij

        root
      end
    end
  end
end