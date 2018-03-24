require 'money_s3/builders/base_builder'
require 'money_s3/builders/predkontace_de_type'

module MoneyS3
  module Builders
    class SeznamPredkontaciDE
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :predkontace_de
          attributes[:predkontace_de].each { |i| root << PredkontaceDEType.new(i, 'PredkontaceDE').builder }
        end

        root
      end
    end
  end
end