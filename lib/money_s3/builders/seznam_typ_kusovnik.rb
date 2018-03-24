require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class SeznamTypKusovnik
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :typ_kusovnik
          attributes[:typ_kusovnik].each { |i| root << KusovnikType.new(i, 'TypKusovnik').builder }
        end

        root
      end
    end
  end
end