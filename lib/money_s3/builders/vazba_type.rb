require 'money_s3/builders/base_builder'
require 'money_s3/builders/doklad'

module MoneyS3
  module Builders
    class VazbaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :pod_typ
          element = Ox::Element.new('PodTyp')
          element << attributes[:pod_typ] if attributes[:pod_typ]
          root << element
        end

        if attributes.key? :doklad
          root << Doklad.new(attributes[:doklad], 'Doklad').builder
        end

        root
      end
    end
  end
end