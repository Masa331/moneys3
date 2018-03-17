require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma'

module MoneyS3
  module Builders
    class SeznamFirem
      include BaseBuilder

      attr_accessor :firma

      def builder
        root = Ox::Element.new(element_name)

        if firma
          firma.each { |i| root << Firma.new(i, 'Firma').builder }
        end

        root
      end
    end
  end
end