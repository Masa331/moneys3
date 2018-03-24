require 'money_s3/builders/base_builder'
require 'money_s3/builders/faktura_type'

module MoneyS3
  module Builders
    class Data
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :fakt_vyd
          root << FakturaType.new('FaktVyd', data[:fakt_vyd]).builder
        end

        if data.key? :fakt_prij
          root << FakturaType.new('FaktPrij', data[:fakt_prij]).builder
        end

        root
      end
    end
  end
end