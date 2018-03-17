require 'money_s3/builders/base_builder'
require 'money_s3/builders/cenova_hladina'

module MoneyS3
  module Builders
    class SeznamCenHladin
      include BaseBuilder

      attr_accessor :cenova_hladina

      def builder
        root = Ox::Element.new(element_name)

        if cenova_hladina
          cenova_hladina.each { |i| root << CenovaHladina.new(i, 'CenovaHladina').builder }
        end

        root
      end
    end
  end
end