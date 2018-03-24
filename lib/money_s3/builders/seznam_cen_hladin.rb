require 'money_s3/builders/base_builder'
require 'money_s3/builders/cenova_hladina'

module MoneyS3
  module Builders
    class SeznamCenHladin
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :cenova_hladina
          attributes[:cenova_hladina].each { |i| root << CenovaHladina.new(i, 'CenovaHladina').builder }
        end

        root
      end
    end
  end
end