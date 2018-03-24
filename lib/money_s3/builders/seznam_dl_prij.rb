require 'money_s3/builders/base_builder'
require 'money_s3/builders/dl_prij'

module MoneyS3
  module Builders
    class SeznamDLPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :dl_prij
          data[:dl_prij].each { |i| root << DLPrij.new('DLPrij', i).builder }
        end

        root
      end
    end
  end
end