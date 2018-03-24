require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ReferenceType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :id
          attributes[:id].map { |i| Ox::Element.new('ID') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end