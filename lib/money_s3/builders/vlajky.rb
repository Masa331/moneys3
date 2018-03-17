require 'money_s3/builders/base_builder'
require 'money_s3/builders/vlajka_type'

module MoneyS3
  module Builders
    class Vlajky
      include BaseBuilder

      attr_accessor :global, :user

      def builder
        root = Ox::Element.new(element_name)

        root << VlajkaType.new(global, 'Global').builder if global
        root << VlajkaType.new(user, 'User').builder if user

        root
      end
    end
  end
end