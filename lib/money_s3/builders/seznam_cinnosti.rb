require 'money_s3/builders/base_builder'
require 'money_s3/builders/cinnost'

module MoneyS3
  module Builders
    class SeznamCinnosti
      include BaseBuilder

      attr_accessor :cinnost

      def builder
        root = Ox::Element.new(element_name)

        if cinnost
          cinnost.each { |i| root << Cinnost.new(i, 'Cinnost').builder }
        end

        root
      end
    end
  end
end