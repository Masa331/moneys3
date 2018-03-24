require 'money_s3/builders/base_builder'
require 'money_s3/builders/nab_prij'

module MoneyS3
  module Builders
    class SeznamNabPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :nab_prij
          data[:nab_prij].each { |i| root << NabPrij.new('NabPrij', i).builder }
        end

        root
      end
    end
  end
end