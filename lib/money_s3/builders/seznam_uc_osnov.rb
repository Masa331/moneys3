require 'money_s3/builders/base_builder'
require 'money_s3/builders/uc_osnova_type'

module MoneyS3
  module Builders
    class SeznamUcOsnov
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :uc_osnova
          data[:uc_osnova].each { |i| root << UcOsnovaType.new('UcOsnova', i).builder }
        end

        root
      end
    end
  end
end