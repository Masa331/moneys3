require 'money_s3/builders/base_builder'
require 'money_s3/builders/predkontace_de_type'

module MoneyS3
  module Builders
    class SeznamPredkontaciDE
      include BaseBuilder

      attr_accessor :predkontace_de

      def builder
        root = Ox::Element.new(element_name)

        if predkontace_de
          predkontace_de.each { |i| root << PredkontaceDEType.new(i, 'PredkontaceDE').builder }
        end

        root
      end
    end
  end
end