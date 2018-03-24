require 'money_s3/builders/base_builder'
require 'money_s3/builders/nab_vyd'

module MoneyS3
  module Builders
    class SeznamNabVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :nab_vyd
          data[:nab_vyd].each { |i| root << NabVyd.new('NabVyd', i).builder }
        end

        root
      end
    end
  end
end