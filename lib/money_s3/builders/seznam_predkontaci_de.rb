require 'money_s3/builders/base_builder'
require 'money_s3/builders/predkontace_de_type'

module MoneyS3
  module Builders
    class SeznamPredkontaciDE
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :predkontace_de
          data[:predkontace_de].each { |i| root << PredkontaceDEType.new('PredkontaceDE', i).builder }
        end

        root
      end
    end
  end
end