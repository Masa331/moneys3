require 'money_s3/builders/base_builder'
require 'money_s3/builders/mzda_type'

module MoneyS3
  module Builders
    class SeznamMezd
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :mzda
          data[:mzda].each { |i| root << MzdaType.new('Mzda', i).builder }
        end

        root
      end
    end
  end
end