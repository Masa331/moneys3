require 'money_s3/builders/base_builder'
require 'money_s3/builders/fakt_vyd'

module MoneyS3
  module Builders
    class SeznamFaktVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :fakt_vyd
          data[:fakt_vyd].each { |i| root << FaktVyd.new('FaktVyd', i).builder }
        end

        root
      end
    end
  end
end