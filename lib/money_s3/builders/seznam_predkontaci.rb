require 'money_s3/builders/base_builder'
require 'money_s3/builders/predkontace'

module MoneyS3
  module Builders
    class SeznamPredkontaci
      include BaseBuilder

      attr_accessor :predkontace

      def builder
        root = Ox::Element.new(element_name)

        if predkontace
          predkontace.each { |i| root << Predkontace.new(i, 'Predkontace').builder }
        end

        root
      end
    end
  end
end