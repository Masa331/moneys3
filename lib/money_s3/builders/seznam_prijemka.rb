require 'money_s3/builders/base_builder'
require 'money_s3/builders/prijemka'

module MoneyS3
  module Builders
    class SeznamPrijemka
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :prijemka
          data[:prijemka].each { |i| root << Prijemka.new('Prijemka', i).builder }
        end

        root
      end
    end
  end
end