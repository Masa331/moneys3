require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad'

module MoneyS3
  module Builders
    class SeznamSkladu
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :sklad
          attributes[:sklad].each { |i| root << Sklad.new(i, 'Sklad').builder }
        end

        root
      end
    end
  end
end