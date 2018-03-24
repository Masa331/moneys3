require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class SeznamZakKusovnik
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zak_kusovnik
          attributes[:zak_kusovnik].each { |i| root << KusovnikType.new(i, 'ZakKusovnik').builder }
        end

        root
      end
    end
  end
end