require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class DefiniceCeny
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root
      end
    end
  end
end