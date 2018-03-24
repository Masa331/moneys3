require 'money_s3/builders/base_builder'
require 'money_s3/builders/vlajka_type'

module MoneyS3
  module Builders
    class Vlajky
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :global
          root << VlajkaType.new(attributes[:global], 'Global').builder
        end

        if attributes.key? :user
          root << VlajkaType.new(attributes[:user], 'User').builder
        end

        root
      end
    end
  end
end