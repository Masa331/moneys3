require 'money_s3/builders/base_builder'
require 'money_s3/builders/stredisko'

module MoneyS3
  module Builders
    class SeznamStredisek
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :stredisko
          attributes[:stredisko].each { |i| root << Stredisko.new(i, 'Stredisko').builder }
        end

        root
      end
    end
  end
end