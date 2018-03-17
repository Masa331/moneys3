require 'money_s3/builders/base_builder'
require 'money_s3/builders/stredisko'

module MoneyS3
  module Builders
    class SeznamStredisek
      include BaseBuilder

      attr_accessor :stredisko

      def builder
        root = Ox::Element.new(element_name)

        if stredisko
          stredisko.each { |i| root << Stredisko.new(i, 'Stredisko').builder }
        end

        root
      end
    end
  end
end