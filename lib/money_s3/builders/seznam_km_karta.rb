require 'money_s3/builders/base_builder'
require 'money_s3/builders/km_karta'

module MoneyS3
  module Builders
    class SeznamKmKarta
      include BaseBuilder

      attr_accessor :km_karta

      def builder
        root = Ox::Element.new(element_name)

        if km_karta
          km_karta.each { |i| root << KmKarta.new(i, 'KmKarta').builder }
        end

        root
      end
    end
  end
end