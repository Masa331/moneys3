require 'money_s3/builders/base_builder'
require 'money_s3/builders/fakt_vyd'

module MoneyS3
  module Builders
    class SeznamFaktVyd
      include BaseBuilder

      attr_accessor :fakt_vyd

      def builder
        root = Ox::Element.new(element_name)

        if fakt_vyd
          fakt_vyd.each { |i| root << FaktVyd.new(i, 'FaktVyd').builder }
        end

        root
      end
    end
  end
end