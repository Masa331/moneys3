require 'money_s3/builders/base_builder'
require 'money_s3/builders/uc_osnova_type'

module MoneyS3
  module Builders
    class SeznamUcOsnov
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :uc_osnova
          attributes[:uc_osnova].each { |i| root << UcOsnovaType.new(i, 'UcOsnova').builder }
        end

        root
      end
    end
  end
end