require 'money_s3/builders/base_builder'
require 'money_s3/builders/mzda_type'

module MoneyS3
  module Builders
    class SeznamMezd
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :mzda
          attributes[:mzda].each { |i| root << MzdaType.new(i, 'Mzda').builder }
        end

        root
      end
    end
  end
end