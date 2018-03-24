require 'money_s3/builders/base_builder'
require 'money_s3/builders/vazba_type'

module MoneyS3
  module Builders
    class SeznamVazeb
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :vazba
          root << VazbaType.new('Vazba', data[:vazba]).builder
        end

        root
      end
    end
  end
end