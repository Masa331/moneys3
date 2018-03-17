require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class SeznamZakKusovnik
      include BaseBuilder

      attr_accessor :zak_kusovnik

      def builder
        root = Ox::Element.new(element_name)

        if zak_kusovnik
          zak_kusovnik.each { |i| root << KusovnikType.new(i, 'ZakKusovnik').builder }
        end

        root
      end
    end
  end
end