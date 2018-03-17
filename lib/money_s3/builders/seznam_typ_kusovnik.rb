require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class SeznamTypKusovnik
      include BaseBuilder

      attr_accessor :typ_kusovnik

      def builder
        root = Ox::Element.new(element_name)

        if typ_kusovnik
          typ_kusovnik.each { |i| root << KusovnikType.new(i, 'TypKusovnik').builder }
        end

        root
      end
    end
  end
end