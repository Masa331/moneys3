require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ReferenceType
      include BaseBuilder

      attr_accessor :id

      def builder
        root = Ox::Element.new(element_name)

        if id
          id.map { |i| Ox::Element.new('ID') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end